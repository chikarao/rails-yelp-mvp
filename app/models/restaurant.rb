class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
