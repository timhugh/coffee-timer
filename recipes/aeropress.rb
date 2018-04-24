require 'recipe'

Recipe.new do
  name 'Aeropress'

  grinds_amount "17.5g"
  grind_size :medium

  prep "Heat filter and brewer, and dump water"

  step "Pour 230g of water and immediately insert cap to prevent filtering"
  time 60
  step "Remove cap, stir, and press"
end
