scoreboard objectives add gm4_gv_math_num dummy
scoreboard objectives add gm4_tree_data dummy
scoreboard objectives add gm4_tree_type dummy
scoreboard objectives add gm4_trait_data dummy
scoreboard objectives add gm4_gv_nbt_data dummy
scoreboard objectives add gm4_gv_arborist dummy
scoreboard objectives add gm4_gv_trades dummy
scoreboard objectives add gm4_gv_prev_xp dummy
scoreboard objectives add gm4_gv_analyze dummy
scoreboard objectives add gm4_gv_analyze_p dummy

function gm4_garden_variety:init/static_variables
execute store result score world_seed gm4_tree_data run seed


execute unless score garden_variety gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"garden variety"}
scoreboard players set garden_variety gm4_modules 1

schedule function gm4_garden_variety:main 10t
schedule function gm4_garden_variety:tick 11t
schedule function gm4_garden_variety:1s 12t
schedule function gm4_garden_variety:10s 13t

#$moduleUpdateList


