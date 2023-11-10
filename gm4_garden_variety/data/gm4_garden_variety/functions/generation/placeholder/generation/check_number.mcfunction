
scoreboard players set $block_generation_active gm4_garden_variety 1

# pre load data
function gm4_garden_variety:generation/placeholder/generation/pre_load_data

# place block
execute if score $number gm4_gv_placeholder matches ..0 run function gm4_garden_variety:generation/placeholder/generation/success

# store data
execute unless score $generation_speed gm4_gv_placeholder matches 1.. run scoreboard players set $generation_speed gm4_gv_placeholder 1
scoreboard players operation $number gm4_gv_placeholder -= $generation_speed gm4_gv_placeholder
execute store result storage gm4_garden_variety:reference placeholder.number int 1 run scoreboard players get $number gm4_gv_placeholder
data modify entity @s data.gm4_garden_variety.placeholder set from storage gm4_garden_variety:reference placeholder
