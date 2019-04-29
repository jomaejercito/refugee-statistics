class HostingCountry < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :year, presence: true, uniqueness: true
  validates :population
end
