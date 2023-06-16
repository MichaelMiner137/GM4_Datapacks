
# pointer data
data remove storage gm4_garden_variety:reference pointer_raw
data modify storage gm4_garden_variety:reference pointer_raw set from entity @s
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer

# reset
scoreboard players reset * gm4_gv_component

# [ Load ]

execute store result score $pointer.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.identifier
execute store result score $diverge.x gm4_gv_component run data get storage gm4_garden_variety:reference component.diverge.x
execute store result score $diverge.y gm4_gv_component run data get storage gm4_garden_variety:reference component.diverge.y

# [ Interpret ]

# diverge x
execute store result score #x_rotation_direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.bend.direction
execute if score $diverge.x gm4_gv_component matches 1 run scoreboard players operation #x_rotation_direction gm4_gv_component *= #-1 gm4_garden_variety

# diverge y
execute store result score #y_rotation_direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.bend.direction
execute if score $diverge.y gm4_gv_component matches 1 run scoreboard players operation #y_rotation_direction gm4_gv_component *= #-1 gm4_garden_variety