class Treatment < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :time, presence: true, numericality: true

  has_many :stylist_treatments
  belongs_to :service

  def treatment_salons
    Salon.all.select{|salon| salon.treatments.include?(self)}
  end 

  def self.filter_by_service params
    treatments = params[:service_id] ? Treatment.where(service_id: params[:service_id]) : Treatment.all
    treatments
  end
end
