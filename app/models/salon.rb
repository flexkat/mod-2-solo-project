class Salon < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :opening_hours, presence: true

  belongs_to :location
  has_many :stylists
  has_many :treatments,
  :through => :stylists, :source => :stylist_treatments

  
  def salon_treatments
    services = [] 
    self.stylists.each do |stylist|
      stylist.treatments.each do |i|
        if i.valid? == true
          services << i
        end
      end
    end 
    services.flatten
  end 

  def salon_treatment_names
    self.salon_treatments.map do |treatment|
      treatment.name
    end 
  end

  def sort_and_filter params
    treatments = self.salon_treatments
    if params[:sort_by] && params[:sort_by] == "Lowest price"
      treatments.sort_by(&:price)
    else
      treatments.sort_by(&:price).reverse  
    end
  end
end
