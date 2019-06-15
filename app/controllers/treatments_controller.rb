class TreatmentsController < ApplicationController

  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end

  def create
    treatment = Treatment.create treatment_params
    redirect_to treatment
  end

  def show
    @treatment = Treatment.find params[:id]
  end

  def edit
    @treatment = Treatment.find params[:id]
  end

  def update
    treatment = Treatment.update treatment_params
    redirect_to treatment
  end

  private

  def treatment_params
    params.require(:treatment).permit(:name, :description, :price, :time)
  end

end
