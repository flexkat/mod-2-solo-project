class TreatmentsController < ApplicationController

  def index
    @treatments = Treatment.filter_by_service params
    @services = Service.all

  end

  def new
    @treatment = Treatment.new
  end

  def create
    treatment = Treatment.create treatment_params
    if treatment.valid?
      redirect_to treatment
    else
      flash[:errors] = treatment.errors.full_messages
      redirect_to new_treatment_path
    end
  end

  def show
    @treatment = Treatment.find params[:id]
  end

  def edit
    @treatment = Treatment.find params[:id]
  end

  def update
    treatment = Treatment.find params[:id]
    treatment.update treatment_params
    redirect_to treatment_path
  end

  def destroy
    treatment = Treatment.find params[:id]
    treatment.destroy
    redirect_to treatments_path
  end

  private

  def treatment_params
    params.require(:treatment).permit(:name, :description, :price, :time, :service_id)
  end

end
