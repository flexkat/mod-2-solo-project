class Treatment < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :time, presence: true, numericality: true




  has_many :stylist_treatments

  
end
