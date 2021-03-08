scoreboard objectives add gm4_math_num dummy
scoreboard objectives add gm4_tree_data dummy
scoreboard objectives add gm4_tree_type dummy
scoreboard objectives add gm4_tree_limit dummy
scoreboard objectives add gm4_fruit_data dummy
scoreboard objectives add gm4_trait_data dummy
function gm4_garden_variety:init/static_variables
function gm4_garden_variety:init/tree_limits
function gm4_garden_variety:init/fruit_data
execute store result score world_seed gm4_tree_data run seed


execute unless score garden_variety gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"garden variety"}
scoreboard players set garden_variety gm4_modules 1

schedule function gm4_garden_variety:main 10t

#$moduleUpdateList


