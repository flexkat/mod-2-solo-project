class Stylist < ApplicationRecord
  belongs_to :salon
  has_many :stylist_treatments
  has_many :treatments, through: :stylist_treatments
end
