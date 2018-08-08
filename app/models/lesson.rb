class Lesson < ApplicationRecord
  belongs_to :category
  has_one :language, through: :category

  validates :title, presence: true
  validates :view_tag, presence: true
  validates :view_tag, uniqueness: true
end
