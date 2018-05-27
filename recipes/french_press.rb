require 'recipe'

Recipe.new do
  name 'French Press'

  grinds_amount "56g"
  grind_size :medium

  prep "Rinse with hot water and discard, then add coffee grounds"

  step "Fill press with water to the halfway mark, saturating all of the grounds"
  time 60
  step "Stir thoroughly, fill water to the top, and put the lid on"
  time 180
  step "Firmly press, and serve"
end
