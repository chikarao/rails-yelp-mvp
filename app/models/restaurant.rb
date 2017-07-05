class Restaurant < ApplicationRecord
  has_many :reviews

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORIES }

  validates :name, :address, presence: true, uniqueness: true
end
