class Country < ApplicationRecord
  has_many :origins
  has_many :destinations

  validates :name, presence: true, uniqueness: true
  validates :facts, presence: true, uniqueness: true   
end
