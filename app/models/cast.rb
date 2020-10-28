class Cast < ApplicationRecord
  belongs_to :world
  validates :name, :gender, :species, presence: true
  validates :height, numericality: {only_integer: true}
end
