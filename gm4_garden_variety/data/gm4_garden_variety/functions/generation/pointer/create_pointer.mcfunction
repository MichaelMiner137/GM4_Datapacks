
particle flame ~ ~ ~4

#execute at @s run particle sculk_soul ^2 ^ ^0
#execute at @s run particle soul_fire_flame ^2 ^ ^0.1
#execute at @s run particle soul_fire_flame ^2 ^ ^0.2
#execute at @s run particle soul_fire_flame ^2 ^ ^0.3
#execute at @s run particle soul_fire_flame ^2 ^ ^0.4

data modify storage gm4_garden_variety:debug path append value "*"

# spawn pointer
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer","gm4_gv_new"]}

# store data
execute as @e[type=marker,tag=gm4_gv_generation_pointer,distance=..0.1,tag=gm4_gv_new] run function gm4_garden_variety:generation/pointer/new_pointer

# reset storage
data remove storage gm4_garden_variety:new pointer
