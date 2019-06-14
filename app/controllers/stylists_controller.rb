class StylistsController < ApplicationController

  def index
    @stylists = Stylist.all
  end

  def new
    @stylist = Stylist.new
  end

  def create
    stylist = Stylist.create stylist_params
    redirect_to stylist
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

  def stylist_params
    params.require(:stylist).permit(:name, :job_title, :salon_id)
  end
end
