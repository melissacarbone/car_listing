class Car < ActiveRecord::Base
  validates_presence_of :color
  validates_presence_of :year
  validates_presence_of :mileage

  validates :year, numericality: { greater_than_or_equal_to: 1980 }
end
