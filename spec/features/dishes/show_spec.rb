require 'rails_helper'

RSpec.describe 'Dishes Show' do

  before :each do
    @chef1 = Chef.create(name: 'The Don')
    @dish1 = Dish.create(name: 'Tacos', description: 'of come on, you know what they are', chef_id: @chef1.id)
    @ingredient1 = Ingredient.create(name: "Tortilla", calories: 34)
    @ingredient2 = Ingredient.create(name: "Carne Asada", calories: 120)
    @ingredient3 = Ingredient.create(name: "Pico de Gallo", calories: 20)
    # DishIngredient.create(id: 1, dish_id: "#{@dish1.id}", ingredient_id: "#{@ingredient1.id}")
    # DishIngredient.create(dish_id: "#{@dish1.id}", ingredient_id: "#{@ingredient2.id}")
    # DishIngredient.create(dish_id: "#{@dish1.id}", ingredient_id: "#{@ingredient3.id}")

  end

  it 'can display dish name' do
    visit "/dishes/#{@dish1.id}/show"

    expect(page).to have_content('Tacos')
  end

  it 'displays the chefs name, dish ingredients' do
    visit "/dishes/#{@dish1.id}/show"

    expect(page).to have_content("#{@ingredient1.name}")
    expect(page).to have_content("#{@ingredient2.name}")
    expect(page).to have_content("#{@ingredient3.name}")
  end

end
