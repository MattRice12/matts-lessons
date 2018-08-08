class Language < ApplicationRecord
  has_many :categories
  has_many :lessons, through: :categories
end
