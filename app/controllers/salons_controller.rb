class SalonsController < ApplicationController

  def index
    @salons = Salon.location_filter params
    @locations = Location.all
  end

  def show
    @salon = Salon.find params[:id]
    @treatment_names = @salon.salon_treatment_names
    @treatments = @salon.price_sort params
    @sort_options = ["Lowest price", "Highest price"]
  end

  def new
    @salon = Salon.new
  end

  def create
    salon = Salon.create salon_params
    if salon.valid?
      redirect_to salon
    else
      flash[:errors] = salon.errors.full_messages
      redirect_to new_salon_path
    end
  end

  def edit
    @salon = Salon.find params[:id]
  end

  def update
    salon = Salon.find params[:id]
    salon.update salon_params
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
