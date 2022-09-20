class Ingredient < ApplicationRecord
  has_many :dish_ingredient
  has_many :dishes, through: :dish_ingredient

end
