# Generates tree seed based on world seed and location.
# @s = @e[type=minecraft:area_effect_cloud,tag=gm4_apple_tree_new,limit=1]
# at tree spawn position
# run from gm4_garden_variety:generate/palm_tree/TREE_TYPE/orbis/chunk/spawn_tree

# store tree coordinates
data modify storage gm4_garden_variety:temp/sapling/position Pos set from entity @s Pos
execute store result score $loc_x_bits gm4_tree_data run data get storage gm4_garden_variety:temp/sapling/position Pos[0]
execute store result score $loc_y_bits gm4_tree_data run data get storage gm4_garden_variety:temp/sapling/position Pos[1]
execute store result score $loc_z_bits gm4_tree_data run data get storage gm4_garden_variety:temp/sapling/position Pos[2]
data remove storage gm4_garden_variety:temp/sapling/position Pos

# debug message
scoreboard players add king_palm_tree_count gm4_orbis_config 1
execute if score structure_debug gm4_orbis_config matches 1 run tellraw @a[gamemode=!survival,gamemode=!adventure] [{"translate":"%1$s%3427655$s","with":["Spawned ",{"translate":"text.gm4.orbis_pre_gen.spawned"}],"color":"green"},{"translate":"%1$s%3427655$s","with":["King Palm Tree",{"translate":"text.gm4.orbis_pre_gen.apple_tree"}],"color":"red"},{"translate":"%1$s%3427655$s","with":[" at ",{"translate":"text.gm4.orbis_pre_gen.spawned.at"}],"color":"green"},{"score":{"objective":"gm4_tree_data","name":"$loc_x_bits"},"color":"gold"}," ",{"score":{"objective":"gm4_tree_data","name":"$loc_y_bits"},"color":"gold"}," ",{"score":{"objective":"gm4_tree_data","name":"$loc_z_bits"},"color":"gold"}]

# set seed mode (position)
scoreboard players set seed_mode gm4_tree_data 0

# spawn tree
function gm4_fruiting_trees:tree/initialize

# remove new tree marker (used for targeting of initialize onto freshly spawned AECs that should be grown instantly, e.g. in gm4_garden_variety:chunk/spawn_tree)
tag @s remove gm4_king_palm_tree_new
