
##### LOAD SETTINGS #####

# inherit from pointer
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute store result score #pivot_generator.x_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.x
execute store result score #pivot_generator.y_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.y
execute store result score #active_pointer.bend.x.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.bend.x.direction
execute store result score #active_pointer.bend.y.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.bend.y.direction
execute store result score #active_pointer.counted.total gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.total
execute store result score #active_pointer.counted.fill gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.fill
execute store result score #active_pointer.counted.pattern gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.pattern
execute store result score #active_pointer.counted.random gm4_gv_component run data get storage gm4_garden_variety:reference pointer.counted.random

# pointer
execute store result score $pointer.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.identifier
# absolute
execute store result score $absolute.x gm4_gv_component run data get storage gm4_garden_variety:reference component.absolute.x 100
execute store result score $absolute.y gm4_gv_component run data get storage gm4_garden_variety:reference component.absolute.y 100
execute if data storage gm4_garden_variety:reference component.absolute.x.min store result score $absolute.x.min gm4_gv_component run data get storage gm4_garden_variety:reference component.absolute.x.min 100
execute if data storage gm4_garden_variety:reference component.absolute.x.max store result score $absolute.x.max gm4_gv_component run data get storage gm4_garden_variety:reference component.absolute.x.max 100
execute if data storage gm4_garden_variety:reference component.absolute.y.min store result score $absolute.y.min gm4_gv_component run data get storage gm4_garden_variety:reference component.absolute.y.min 100
execute if data storage gm4_garden_variety:reference component.absolute.y.max store result score $absolute.y.max gm4_gv_component run data get storage gm4_garden_variety:reference component.absolute.y.max 100
# relative
execute store result score $relative.x.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.relative.x.offset 100
execute store result score $relative.y.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.relative.y.offset 100
execute if data storage gm4_garden_variety:reference component.relative.x.offset.min store result score $relative.x.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.relative.x.offset.min 100
execute if data storage gm4_garden_variety:reference component.relative.x.offset.max store result score $relative.x.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.relative.x.offset.max 100
execute if data storage gm4_garden_variety:reference component.relative.y.offset.min store result score $relative.y.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.relative.y.offset.min 100
execute if data storage gm4_garden_variety:reference component.relative.y.offset.max store result score $relative.y.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.relative.y.offset.max 100
# diverge
execute store result score $diverge.x gm4_gv_component run data get storage gm4_garden_variety:reference component.diverge.x
execute store result score $diverge.y gm4_gv_component run data get storage gm4_garden_variety:reference component.diverge.y



###### INTERPRET SETTINGS #####

#### FUTURE MACRO ###
# calculate ranges
execute if data storage gm4_garden_variety:reference component.absolute.x.max run function gm4_garden_variety:generation/component/pivot/calculate/absolute-x
execute if data storage gm4_garden_variety:reference component.absolute.y.max run function gm4_garden_variety:generation/component/pivot/calculate/absolute-y
execute if data storage gm4_garden_variety:reference component.relative.x.offset.max run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-offset
execute if data storage gm4_garden_variety:reference component.relative.y.offset.max run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-offset

# relative offset direction
execute unless data storage gm4_garden_variety:reference component.relative.x run data modify storage gm4_garden_variety:reference component.relative.x.direction set value "random"
execute if data storage gm4_garden_variety:reference component.relative.x{direction:"random"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-direction/random
execute if data storage gm4_garden_variety:reference component.relative.x{direction:"forced"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-direction/forced
execute if data storage gm4_garden_variety:reference component.relative.x{direction:"pointer/total"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-direction/pointer-total
execute if data storage gm4_garden_variety:reference component.relative.x{direction:"pointer/fill"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-direction/pointer-fill
execute if data storage gm4_garden_variety:reference component.relative.x{direction:"pointer/pattern"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-direction/pointer-pattern
execute if data storage gm4_garden_variety:reference component.relative.x{direction:"pointer/random"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-x-direction/pointer-random
execute unless data storage gm4_garden_variety:reference component.relative.y run data modify storage gm4_garden_variety:reference component.relative.y.direction set value "forced"
execute if data storage gm4_garden_variety:reference component.relative.y{direction:"random"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-direction/random
execute if data storage gm4_garden_variety:reference component.relative.y{direction:"forced"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-direction/forced
execute if data storage gm4_garden_variety:reference component.relative.y{direction:"pointer/total"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-direction/pointer-total
execute if data storage gm4_garden_variety:reference component.relative.y{direction:"pointer/fill"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-direction/pointer-fill
execute if data storage gm4_garden_variety:reference component.relative.y{direction:"pointer/pattern"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-direction/pointer-pattern
execute if data storage gm4_garden_variety:reference component.relative.y{direction:"pointer/random"} run function gm4_garden_variety:generation/component/pivot/calculate/relative-y-direction/pointer-random



###### WORKING DATA #####

# set rotation
execute if data storage gm4_garden_variety:reference component.absolute.x run scoreboard players operation #pivot_generator.x_rotation gm4_gv_component = $absolute.x gm4_gv_component
execute if data storage gm4_garden_variety:reference component.absolute.y run scoreboard players operation #pivot_generator.y_rotation gm4_gv_component = $absolute.y gm4_gv_component

# modify rotation
execute unless score $relative.x.offset gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/pivot/modify/x-rotation
execute unless score $relative.y.offset gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/pivot/modify/y-rotation

# diverge
execute if score $diverge.x gm4_gv_component matches 1 run scoreboard players operation #active_pointer.bend.x.direction gm4_gv_component *= #-1 gm4_garden_variety
execute if score $diverge.y gm4_gv_component matches 1 run scoreboard players operation #active_pointer.bend.y.direction gm4_gv_component *= #-1 gm4_garden_variety

