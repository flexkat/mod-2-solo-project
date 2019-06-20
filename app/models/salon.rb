class Salon < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :opening_hours, presence: true

  belongs_to :location
  has_many :stylists
  has_many :treatments, -> { distinct }, through: :stylists
  

  def salon_treatment_names
    self.treatments.map do |treatment|
      treatment.name
    end 
  end

  def self.location_filter params
    salons = params[:location_id] ? Salon.where(location_id: params[:location_id]) : Salon.all
    salons
  end

  def price_sort params
    treatments = self.salon_treatments
    if params[:sort_by] && params[:sort_by] == "Lowest price"
      treatments.sort_by(&:price)
    else
      treatments.sort_by(&:price).reverse  
    end
  end
end
