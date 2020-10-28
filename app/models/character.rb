class Character < ApplicationRecord
  belongs_to :planet

  validates :name, :homeworld, presence: true
  validates :height, :mass, numericality: true
end
