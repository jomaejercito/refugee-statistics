class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :year, presence: true
  population :year, presence: true, uniqueness: true
end
