class HomeWorld < ApplicationRecord
  has_many :planet
  validates :name, presence: true uniqueness: true
end
