
# cycle seeds
function gm4_garden_variety:generation/seed/next_seed
function gm4_garden_variety:generation/seed/next_seed
function gm4_garden_variety:generation/seed/next_seed

# reset component data
scoreboard players reset * gm4_gv_component

# load universal data
execute unless data storage gm4_garden_variety:reference component.chance run scoreboard players set $chance gm4_gv_component 100
execute if data storage gm4_garden_variety:reference component.chance store result score $chance gm4_gv_component run data get storage gm4_garden_variety:reference component.chance

# check for chance
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #random_chance gm4_garden_variety = $sub_seed gm4_gv_generation
scoreboard players operation #random_chance gm4_garden_variety %= #100 gm4_garden_variety
execute store success score #component_success gm4_garden_variety if score #random_chance gm4_garden_variety <= $chance gm4_gv_component

# components
execute if score #component_success gm4_garden_variety matches 1 if data storage gm4_garden_variety:reference component{type:"line"} run function gm4_garden_variety:generation/component/line/init_component
execute if score #component_success gm4_garden_variety matches 1 if data storage gm4_garden_variety:reference component{type:"split"} run function gm4_garden_variety:generation/component/split/init_component
execute if score #component_success gm4_garden_variety matches 1 if data storage gm4_garden_variety:reference component{type:"spreader"} run function gm4_garden_variety:generation/component/spreader/init_component