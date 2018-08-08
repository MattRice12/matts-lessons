class Category < ApplicationRecord
  has_many :lessons

  belongs_to :language

  validates :title, presence: true
  validates :view_tag, presence: true
  validates :view_tag, uniqueness: true
end
