
# pointer data
data remove storage gm4_garden_variety:temp pointer_raw
data modify storage gm4_garden_variety:temp pointer_raw set from entity @s
data remove storage gm4_garden_variety:temp pointer
data modify storage gm4_garden_variety:temp pointer set from entity @s data.gm4_garden_variety.pointer

# reset
scoreboard players reset * gm4_gv_component

# [ Load ]

execute store result score $pointer.target gm4_gv_component run data get storage gm4_garden_variety:temp component.target
execute store result score $pointer.identifier gm4_gv_component run data get storage gm4_garden_variety:temp component.pointer.identifier
execute store result score $pointer.location gm4_gv_component run data get storage gm4_garden_variety:temp component.pointer.location
execute store result score $length.value gm4_gv_component run data get storage gm4_garden_variety:temp component.length.value
execute store result score $length.min gm4_gv_component run data get storage gm4_garden_variety:temp component.length.min
execute store result score $length.max gm4_gv_component run data get storage gm4_garden_variety:temp component.length.max
execute store result score $thickness.value gm4_gv_component run data get storage gm4_garden_variety:temp component.thickness.value
execute store result score $thickness.quality gm4_gv_component run data get storage gm4_garden_variety:temp component.thickness.quality
execute store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation.value
execute store result score $x.rotation.min gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation.min
execute store result score $x.rotation.max gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation.max
execute store result score $x.bend.value gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.value
execute store result score $x.bend.min gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.min
execute store result score $x.bend.max gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.max
execute store result score $x.bend.frequency gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.frequency
execute store result score $x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.direction
execute store result score $x.curl.value gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.value
execute store result score $x.curl.min gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.min
execute store result score $x.curl.max gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.max
execute store result score $x.curl.frequency gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.frequency
execute store result score $x.curl.start gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.start
execute store result score $x.curl.stop gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.stop
execute store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation.value
execute store result score $y.rotation.min gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation.min
execute store result score $y.rotation.max gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation.max
execute store result score $y.bend.value gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.value
execute store result score $y.bend.min gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.min
execute store result score $y.bend.max gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.max
execute store result score $y.bend.frequency gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.frequency
execute store result score $y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.direction
execute store result score $y.curl.value gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.value
execute store result score $y.curl.min gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.min
execute store result score $y.curl.max gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.max
execute store result score $y.curl.frequency gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.frequency
execute store result score $y.curl.start gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.start
execute store result score $y.curl.stop gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.stop
execute store result score $pattern.length gm4_gv_component run data get storage gm4_garden_variety:temp component.pattern.list

# [ Flags ]

# overridenn
execute store success score $target.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.target
execute store success score $pointer.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.pointer
execute store success score $length.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.length
execute store success score $thickness.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.thickness
execute store success score $x.rotation.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.x.rotation
execute store success score $x.bend.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.x.bend
execute store success score $x.curl.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.x.curl
execute store success score $y.rotation.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.y.rotation
execute store success score $y.bend.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.y.bend
execute store success score $y.curl.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.y.curl
execute store success score $pattern.overriden gm4_gv_component if data storage gm4_garden_variety:temp component.pattern

# static
execute store success score $length.static gm4_gv_component if data storage gm4_garden_variety:temp component.length.value
execute store success score $x.rotation.static gm4_gv_component if data storage gm4_garden_variety:temp component.x.rotation.value
execute store success score $x.bend.static gm4_gv_component if data storage gm4_garden_variety:temp component.x.bend.value
execute store success score $x.curl.static gm4_gv_component if data storage gm4_garden_variety:temp component.x.curl.value
execute store success score $y.rotation.static gm4_gv_component if data storage gm4_garden_variety:temp component.y.rotation.value
execute store success score $y.bend.static gm4_gv_component if data storage gm4_garden_variety:temp component.y.bend.value
execute store success score $y.curl.static gm4_gv_component if data storage gm4_garden_variety:temp component.y.curl.value

# [ Interpret ]

# generate static values
execute unless score $length.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/length
execute unless score $x.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/x_rotation
execute unless score $y.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/y_rotation

# set random bend direction
execute unless score $x.bend.direction gm4_gv_component matches 1 unless score $x.bend.direction gm4_gv_component matches -1 run function gm4_garden_variety:generation/component/trunk/calc/x_bend_dir
execute unless score $y.bend.direction gm4_gv_component matches 1 unless score $y.bend.direction gm4_gv_component matches -1 run function gm4_garden_variety:generation/component/trunk/calc/y_bend_dir

# [ Pointer Data ]

execute unless score $x.rotation.overriden gm4_gv_component matches 1 store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:temp pointer.x_rotation
execute unless score $y.rotation.overriden gm4_gv_component matches 1 store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:temp pointer.y_rotation
execute unless score $x.bend.direction gm4_gv_component matches -1..1 store result score $x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:temp pointer.x_rotation_direction
execute unless score $y.bend.direction gm4_gv_component matches -1..1 store result score $y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:temp pointer.y_rotation_direction



# debug
#tellraw @p {"nbt":"component.pattern.list","storage":"gm4_garden_variety:temp"}
#tellraw @p {"score":{"name":"$y.bend.direction","objective":"gm4_gv_component"}}

