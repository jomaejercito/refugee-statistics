class Year < ApplicationRecord
  has_many :origins
  has_many :destinations

  validates :year, presence: true, uniqueness: true  
end
