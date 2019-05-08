class Origin < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :population, presence: true
end
