class SalonsController < ApplicationController

  def index
    @salons = Salon.all
  end

  def show
    @salon = Salon.find params[:id]
  end

  def new
    @salon = Salon.new
  end

  def create
    salon = Salon.create salon_params
    redirect_to salon
  end

  def edit
    @salon = Salon.find params[:id]
  end

  def update
    salon = Salon.update salon_params
    redirect_to salon_path(salon)
  end

  def destroy
    @salon = Salon.find params[:id]
    @salon.destroy
    redirect_to salons_path
  end


  private 

  def salon_params
    params.require(:salon).permit(:name, :opening_hours, :address, :location_id)
  end
end
