
# [ Loading Data ]

# pointer
scoreboard players reset $pointer.used gm4_gv_component
execute store success score $pointer.used gm4_gv_component run data get storage gm4_garden_variety:temp component.pointer
execute store result score $pointer.value gm4_gv_component run data get storage gm4_garden_variety:temp component.pointer.value

# length
execute store result score $length.value gm4_gv_component store success score $length.static gm4_gv_component run data get storage gm4_garden_variety:temp component.length.value
execute store result score $length.min gm4_gv_component run data get storage gm4_garden_variety:temp component.length.min
execute store result score $length.max gm4_gv_component run data get storage gm4_garden_variety:temp component.length.max
execute if score $length.static gm4_gv_component matches 0 run scoreboard players reset $length.static gm4_gv_component

# thickness
execute store result score $thickness.value gm4_gv_component run data get storage gm4_garden_variety:temp component.thickness.value

# x.rotation
scoreboard players reset $x.rotation.used gm4_gv_component
execute store success score $x.rotation.used gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation
execute store result score $x.rotation.value gm4_gv_component store success score $x.rotation.static gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation.value
execute store result score $x.rotation.min gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation.min
execute store result score $x.rotation.max gm4_gv_component run data get storage gm4_garden_variety:temp component.x.rotation.max
execute if score $x.rotation.static gm4_gv_component matches 0 run scoreboard players reset $x.rotation.static gm4_gv_component

# x.bend
scoreboard players reset $x.bend.used gm4_gv_component
execute store success score $x.bend.used gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend
execute store result score $x.bend.value gm4_gv_component store success score $x.bend.static gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.value
execute store result score $x.bend.min gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.min
execute store result score $x.bend.max gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.max
execute store result score $x.bend.freq gm4_gv_component run data get storage gm4_garden_variety:temp component.x.bend.freq
execute if score $x.bend.static gm4_gv_component matches 0 run scoreboard players reset $x.bend.static gm4_gv_component

# x.curl
scoreboard players reset $x.curl.used gm4_gv_component
execute store success score $x.curl.used gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl
execute store result score $x.curl.value gm4_gv_component store success score $x.curl.static gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.value
execute store result score $x.curl.min gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.min
execute store result score $x.curl.max gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.max
execute store result score $x.curl.freq gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.freq
execute store result score $x.curl.start gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.start
execute store result score $x.curl.stop gm4_gv_component run data get storage gm4_garden_variety:temp component.x.curl.stop
execute if score $x.curl.static gm4_gv_component matches 0 run scoreboard players reset $x.curl.static gm4_gv_component

# y.rotation
scoreboard players reset $y.rotation.used gm4_gv_component
execute store success score $y.rotation.used gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation
execute store result score $y.rotation.value gm4_gv_component store success score $y.rotation.static gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation.value
execute store result score $y.rotation.min gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation.min
execute store result score $y.rotation.max gm4_gv_component run data get storage gm4_garden_variety:temp component.y.rotation.max
execute if score $y.rotation.static gm4_gv_component matches 0 run scoreboard players reset $y.rotation.static gm4_gv_component

# y.bend
scoreboard players reset $y.bend.used gm4_gv_component
execute store success score $y.bend.used gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend
execute store result score $y.bend.value gm4_gv_component store success score $y.bend.static gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.value
execute store result score $y.bend.min gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.min
execute store result score $y.bend.max gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.max
execute store result score $y.bend.freq gm4_gv_component run data get storage gm4_garden_variety:temp component.y.bend.freq
execute if score $y.bend.static gm4_gv_component matches 0 run scoreboard players reset $y.bend.static gm4_gv_component

# y.curl
scoreboard players reset $y.curl.used gm4_gv_component
execute store success score $y.curl.used gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl
execute store result score $y.curl.value gm4_gv_component store success score $y.curl.static gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.value
execute store result score $y.curl.min gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.min
execute store result score $y.curl.max gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.max
execute store result score $y.curl.freq gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.freq
execute store result score $y.curl.start gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.start
execute store result score $y.curl.stop gm4_gv_component run data get storage gm4_garden_variety:temp component.y.curl.stop
execute if score $y.curl.static gm4_gv_component matches 0 run scoreboard players reset $y.curl.static gm4_gv_component

# pattern
scoreboard players reset $pattern.used gm4_gv_component
execute if data storage gm4_garden_variety:temp component.pattern run scoreboard players set $pattern.used gm4_gv_component 1


# [ Interpret Static Data ]

execute unless score $length.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/length
execute unless score $x.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/x_rotation
execute unless score $y.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/y_rotation
