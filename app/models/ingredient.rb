class Ingredient < ApplicationRecord
  has_many :cocktails, through: :doses, dependent: :restrict_with_error
  has_many :doses
  has_attachment :photo

  validates :name, presence: true, uniqueness:true
  validates :photo, presence: true
end
