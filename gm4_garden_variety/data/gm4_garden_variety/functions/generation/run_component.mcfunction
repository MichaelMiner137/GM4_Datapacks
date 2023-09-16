
# cycle seeds
function gm4_garden_variety:generation/seed/next_seed
function gm4_garden_variety:generation/seed/next_seed
function gm4_garden_variety:generation/seed/next_seed

# reset pointer counters
scoreboard players reset #pointer_counter.total gm4_gv_generation

# reset component data
scoreboard players reset * gm4_gv_component

# load universal data
execute unless data storage gm4_garden_variety:reference component.chance run scoreboard players set $chance gm4_gv_component 100
execute if data storage gm4_garden_variety:reference component.chance store result score $chance gm4_gv_component run data get storage gm4_garden_variety:reference component.chance

### FUTURE RANDOM ###
# check for chance
function gm4_garden_variety:generation/seed/next_seed
scoreboard players operation #random_chance gm4_garden_variety = $sub_seed gm4_gv_generation
scoreboard players operation #random_chance gm4_garden_variety %= #100 gm4_garden_variety
scoreboard players add #random_chance gm4_garden_variety 1
execute store success score #component_success gm4_garden_variety if score #random_chance gm4_garden_variety <= $chance gm4_gv_component

# components
execute if score #component_success gm4_garden_variety matches 1 run function #gm4_garden_variety:custom_component
execute if score #component_success gm4_garden_variety matches 1 if data storage gm4_garden_variety:reference component{type:"garden_variety:line"} run function gm4_garden_variety:generation/component/line/init_component
execute if score #component_success gm4_garden_variety matches 1 if data storage gm4_garden_variety:reference component{type:"garden_variety:split"} run function gm4_garden_variety:generation/component/split/init_component
execute if score #component_success gm4_garden_variety matches 1 if data storage gm4_garden_variety:reference component{type:"garden_variety:spreader"} run function gm4_garden_variety:generation/component/spreader/init_component
