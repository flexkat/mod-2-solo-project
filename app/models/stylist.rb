class Stylist < ApplicationRecord
  validates :name, presence: true
  validates :job_title, presence: true

  belongs_to :salon
  has_many :stylist_treatments
  has_many :treatments, through: :stylist_treatments
  accepts_nested_attributes_for :treatments


  def treatment_attributes=(treatment_attributes)
    treatment_attributes.values.each do |treatment_attribute|
      treatment = Treatment.find_or_create_by(treatment_attribute)
      self.categories << treatment
    end
  end
end
