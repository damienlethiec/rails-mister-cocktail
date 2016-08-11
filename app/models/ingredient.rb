class Ingredient < ApplicationRecord
  has_many :cocktails, through: :doses, dependent: :restrict_with_error
  has_many :doses

  validates :name, presence: true, uniqueness:true
end
