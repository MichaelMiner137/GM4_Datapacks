
# check for chance
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #random_chance gm4_garden_variety = $sub_seed gm4_gv_generation
scoreboard players operation #random_chance gm4_garden_variety %= #100 gm4_garden_variety
scoreboard players add #random_chance gm4_garden_variety 1
execute store success score #component_success gm4_garden_variety if score #random_chance gm4_garden_variety <= $pointer.random.chance gm4_gv_component

# check
execute if score #component_success gm4_garden_variety matches 1 if score #line_marker.length_current gm4_gv_component >= $pointer.random.start gm4_gv_component if score #line_marker.length_current gm4_gv_component <= $pointer.random.stop gm4_gv_component positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/random/success
