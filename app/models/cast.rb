class Cast < ApplicationRecord
  belongs_to :characterinfo
  validates :name, uniqueness: true, presence: true
end
