class OriginCountry < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :year, presence: true
  validates :population, presence: true
end
