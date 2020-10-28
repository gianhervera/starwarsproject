class World < ApplicationRecord
  has_many :casts
  validates :name, presence: true
end
