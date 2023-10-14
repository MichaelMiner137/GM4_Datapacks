
# load data
scoreboard players reset * gm4_gv_placeholder
data remove storage gm4_garden_variety:reference placeholder
data modify storage gm4_garden_variety:reference placeholder set from entity @s data.gm4_garden_variety.placeholder
execute store result score $identifier gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.identifier
execute store result score $sub_seed gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.seed
execute store result score $length gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.length
execute store result score $length_current gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.length_current
execute store result score $length_left gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.length_left
execute store result score $current_pattern gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.current_pattern
execute store result score $facing gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.facing
execute store result score $axis gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.axis
execute store result score $composite_group gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.composite_group
execute store result score $pointer_id gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.pointer_id
execute store result score $capped gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.capped
execute store result score $surrounded gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.surrounded
execute store result score $waterlogged gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.waterlogged

# [macro] placeholder set block
data remove storage gm4_garden_variety:macro get_composite_data
execute unless score $composite_group gm4_gv_placeholder matches 2..6 run data modify storage gm4_garden_variety:macro get_composite_data.direction set value "up"
execute if score $composite_group gm4_gv_placeholder matches 2 run data modify storage gm4_garden_variety:macro get_composite_data.direction set value "down"
execute if score $composite_group gm4_gv_placeholder matches 3 run data modify storage gm4_garden_variety:macro get_composite_data.direction set value "north"
execute if score $composite_group gm4_gv_placeholder matches 4 run data modify storage gm4_garden_variety:macro get_composite_data.direction set value "south"
execute if score $composite_group gm4_gv_placeholder matches 5 run data modify storage gm4_garden_variety:macro get_composite_data.direction set value "east"
execute if score $composite_group gm4_gv_placeholder matches 6 run data modify storage gm4_garden_variety:macro get_composite_data.direction set value "west"
