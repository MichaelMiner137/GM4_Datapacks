
tellraw @p ["",{"text":"Generate: ","color":"dark_aqua"},{"nbt":"component.type","storage":"gm4_garden_variety:temp","color":"gold"}]

# get data and kill current pointer
data remove storage gm4_garden_variety:temp pointer
data modify storage gm4_garden_variety:temp pointer set from entity @s
kill @s

# reset scoreboard
scoreboard players reset * gm4_gv_component

# components
execute if data storage gm4_garden_variety:temp component{type:"trunk"} run function gm4_garden_variety:generation/component/trunk/initialize

# clean up
kill @e[type=marker,tag=gm4_gv_generation_builder]
