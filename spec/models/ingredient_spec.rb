require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  describe "relationships" do
    it {should belong_to :dish}
    it {should have_many :dish_ingredients }
  end
end
