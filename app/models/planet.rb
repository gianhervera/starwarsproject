class Planet < ApplicationRecord
  belongs_to :home_world

  validates :planet_name, presence: true, uniqueness: true
  validates :rotation_period, :orbital_period, :diameter, :gravity, :surface_water, :population, presence: true
  validates :population, numericality: true
end
