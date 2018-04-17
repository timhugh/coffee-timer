require 'recipe'

Recipe.new do
  name 'Cowboy'

  grinds_amount "2 tbsp / 8 oz"
  grind_size :fine

  step "Add coffee to water in pot, and stir"
  time 120
  step "Stir again"
  time 120
  step "Sprinkle cold water on grounds and pour carefully"
end
