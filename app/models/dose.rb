class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, uniqueness: { scope: :cocktail, message: "You already have a dose with this ingredient" }
end
