class Salon < ApplicationRecord
  belongs_to :location
  has_many :stylists
end
