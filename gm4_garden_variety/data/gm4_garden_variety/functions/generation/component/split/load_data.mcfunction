
# forced
execute unless data storage gm4_garden_variety:reference component.target run scoreboard players set $target gm4_gv_component 0

# pointer (pre)
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute if data storage gm4_garden_variety:reference pointer.x.rotation store result score #pointer.x.rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.rotation
execute if data storage gm4_garden_variety:reference pointer.y.rotation store result score #pointer.y.rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.rotation
execute if data storage gm4_garden_variety:reference pointer.x.bend.direction store result score #active_pointer.x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.bend.direction
execute if data storage gm4_garden_variety:reference pointer.y.bend.direction store result score #active_pointer.y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.bend.direction

# static
execute if data storage gm4_garden_variety:reference component.target store result score $target gm4_gv_component run data get storage gm4_garden_variety:reference component.target
execute if data storage gm4_garden_variety:reference component.pointer.identifier store result score $pointer.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.identifier
execute if data storage gm4_garden_variety:reference component.x.rotation.offset.value store result score $x.rotation.offset.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.offset.value 100
execute store result score $x.rotation.offset.force_direction gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.offset.force_direction
execute if data storage gm4_garden_variety:reference component.x.rotation.direction.diverge store result score $x.rotation.direction.diverge gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.direction.diverge
execute if data storage gm4_garden_variety:reference component.y.rotation.offset.value store result score $y.rotation.offset.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.offset.value 100
execute store result score $y.rotation.offset.random_direction gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.offset.random_direction
execute if data storage gm4_garden_variety:reference component.y.rotation.direction.diverge store result score $y.rotation.direction.diverge gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.direction.diverge

# dynamic
execute if data storage gm4_garden_variety:reference component.x.rotation.offset.value.min store result score $x.rotation.offset.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.offset.value.min 100
execute if data storage gm4_garden_variety:reference component.x.rotation.offset.value.max store result score $x.rotation.offset.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.offset.value.max 100
execute if data storage gm4_garden_variety:reference component.y.rotation.offset.value.min store result score $y.rotation.offset.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.offset.value.min 100
execute if data storage gm4_garden_variety:reference component.y.rotation.offset.value.max store result score $y.rotation.offset.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.offset.value.max 100

### FUTURE MACRO ###
# calculate ranges
execute if data storage gm4_garden_variety:reference component.x.rotation.offset.value.max run function gm4_garden_variety:generation/component/split/calculate/x-rotation-offset-value
execute if data storage gm4_garden_variety:reference component.y.rotation.offset.value.max run function gm4_garden_variety:generation/component/split/calculate/y-rotation-offset-value

# offset direction
execute if score $x.rotation.offset.force_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/split/correction/x-rotation-offset-force_direction
execute unless score $x.rotation.offset.force_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/split/correction/x-rotation-offset-random_direction
execute if score $y.rotation.offset.random_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/split/correction/y-rotation-offset-random_direction
execute unless score $y.rotation.offset.random_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/split/correction/y-rotation-offset-force_direction

# modify rotation
execute unless score $x.rotation.offset.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/split/modify/x-rotation
execute unless score $y.rotation.offset.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/split/modify/y-rotation

execute if score $x.rotation.direction.diverge gm4_gv_component matches 1 run scoreboard players operation #active_pointer.x.bend.direction gm4_gv_component *= #-1 gm4_garden_variety
execute if score $y.rotation.direction.diverge gm4_gv_component matches 1 run scoreboard players operation #active_pointer.y.bend.direction gm4_gv_component *= #-1 gm4_garden_variety
