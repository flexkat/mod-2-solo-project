class StylistsController < ApplicationController

  def index
    @stylists = Stylist.all
  end

  def new
    @stylist = Stylist.new
  end

  def create
    stylist = Stylist.create stylist_params
    if stylist.valid?
      stylist.stylist_treatments.create(stylist_id: @stylist)
      redirect_to stylist
    else
      flash[:errors] = stylist.errors.full_messages
      redirect_to new_stylist_path
    end
  end

  def show
    @stylist = Stylist.find params[:id]
  end 

  def edit
    @stylist = Stylist.find params[:id]
  end 

  def update
    stylist = Stylist.find params[:id]
    stylist.update stylist_params
    redirect_to stylist
  end

  def destroy
    stylist = Stylist.find params[:id]
    stylist.destroy
    redirect_to stylists_path
  end 

  private

  def first_round_params
    params.require(:stylist).permit(:name, :job_title, :salon_id, :treatment_ids => [], treatments_attributes: [:name, :description, :price, :time, :service_id])
  end

  def stylist_params
    p = first_round_params
    p[:treatment_ids].reject!(&:blank?)
    p
  end

end
