class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  has_attachment :photo

  validates :name, presence: true, uniqueness:true
  validates :photo, presence: true
end
