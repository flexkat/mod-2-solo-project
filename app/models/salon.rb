class Salon < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :opening_hours, presence: true

  belongs_to :location
  has_many :stylists

  def salon_treatments
    treatments = []
    self.stylists.each do |stylist|
      stylist.treatments.map do |treatment|
        treatments << treatment.name
      end
    end 
    treatments
  end
end
