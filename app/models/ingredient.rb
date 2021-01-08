class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
end
