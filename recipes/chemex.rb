require 'recipe'

Recipe.new do
  name 'Chemex'

  grinds_amount "42g"
  grind_size :medium_coarse

  prep "Saturate filter with boiling water, dump, then pour grounds into filter"

  step "Wet grounds and allow bloom (stir if necessary)", scale: 150
  time 45
  step "Saturate up (nearly) to rim", scale: 450
  time 60
  step "Fill to brim", scale: 700
  time 135
  step "Discard filter and pour"
end
