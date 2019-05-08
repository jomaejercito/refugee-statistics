class Destination < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :population, presence: true
end
