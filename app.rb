# frozen_string_literal: true

require 'bundler'
Bundler.require

require 'recipe_book'
require 'recipe'

Recipe = RecipeBook.new

Dir['recipes/**/*.rb'].each { |f| require f }

byebug
