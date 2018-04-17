# frozen_string_literal: true

module CoffeeTimer
  class RecipeBook
    def initialize
      recipes = {}
    end

    def new(&block)
      recipe = CoffeeTimer::Recipe.new(&block)
      recipes[recipe.name] = recipe
    end
  end
end
