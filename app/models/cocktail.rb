class Cocktail < ApplicationRecord
  belongs_to :user
  has_many :doses
  has_many :ingredients, through: :doses
end
