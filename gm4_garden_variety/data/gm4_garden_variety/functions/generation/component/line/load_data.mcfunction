
# reset
scoreboard players reset * gm4_gv_component


# [ Default Settings ]

scoreboard players set $pointer.target gm4_gv_component 0
scoreboard players reset $pointer.identifier gm4_gv_component
scoreboard players reset $pointer.location gm4_gv_component

scoreboard players set $length.value gm4_gv_component 8
scoreboard players reset $length.min gm4_gv_component
scoreboard players reset $length.max gm4_gv_component

scoreboard players set $placeholder.identifier gm4_gv_component 99
scoreboard players set $placeholder.thickness gm4_gv_component 1
scoreboard players set $placeholder.quality gm4_gv_component 4
scoreboard players set $placeholder.rounded gm4_gv_component 1

scoreboard players reset $x.rotation.value gm4_gv_component
scoreboard players set $x.rotation.min gm4_gv_component 1
scoreboard players set $x.rotation.max gm4_gv_component 360

scoreboard players reset $x.bend.value gm4_gv_component
scoreboard players reset $x.bend.min gm4_gv_component
scoreboard players reset $x.bend.max gm4_gv_component
scoreboard players reset $x.bend.freq gm4_gv_component
scoreboard players reset $x.bend.dir gm4_gv_component

scoreboard players reset $x.curl.value gm4_gv_component
scoreboard players reset $x.curl.min gm4_gv_component
scoreboard players reset $x.curl.max gm4_gv_component
scoreboard players reset $x.curl.freq gm4_gv_component
scoreboard players reset $x.curl.start gm4_gv_component
scoreboard players reset $x.curl.stop gm4_gv_component

scoreboard players set $y.rotation.value gm4_gv_component -90
scoreboard players reset $y.rotation.min gm4_gv_component
scoreboard players reset $y.rotation.max gm4_gv_component

scoreboard players reset $y.bend.value gm4_gv_component
scoreboard players set $y.bend.min gm4_gv_component 1
scoreboard players set $y.bend.max gm4_gv_component 2
scoreboard players set $y.bend.freq gm4_gv_component 1
scoreboard players set $y.bend.dir gm4_gv_component 1

scoreboard players set $y.curl.value gm4_gv_component 1
scoreboard players reset $y.curl.min gm4_gv_component
scoreboard players reset $y.curl.max gm4_gv_component
scoreboard players set $y.curl.freq gm4_gv_component 1
scoreboard players set $y.curl.start gm4_gv_component 4
scoreboard players reset $y.curl.stop gm4_gv_component


# [ Pointer Settings ]

# pointer data
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer

execute if data storage gm4_garden_variety:reference pointer.x.rotation store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.rotation
execute if data storage gm4_garden_variety:reference pointer.y.rotation store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.rotation
execute if data storage gm4_garden_variety:reference pointer.x.bend.direction store result score $x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.bend.direction
execute if data storage gm4_garden_variety:reference pointer.y.bend.direction store result score $y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.bend.direction


# [ Sapling Settings ]

execute if data storage gm4_garden_variety:reference component.target store result score $pointer.target gm4_gv_component run data get storage gm4_garden_variety:reference component.target
execute if data storage gm4_garden_variety:reference component.pointer.identifier store result score $pointer.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.identifier
execute if data storage gm4_garden_variety:reference component.pointer.location store result score $pointer.location gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.location

execute if data storage gm4_garden_variety:reference component.length.value store result score $length.value gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value
execute if data storage gm4_garden_variety:reference component.length.min store result score $length.min gm4_gv_component run data get storage gm4_garden_variety:reference component.length.min
execute if data storage gm4_garden_variety:reference component.length.max store result score $length.max gm4_gv_component run data get storage gm4_garden_variety:reference component.length.max

execute if data storage gm4_garden_variety:reference component.placeholder.identifier store result score $placeholder.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.identifier
execute if data storage gm4_garden_variety:reference component.placeholder.thickness store result score $placeholder.thickness gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.thickness
execute if data storage gm4_garden_variety:reference component.placeholder.quality store result score $placeholder.quality gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.quality
execute if data storage gm4_garden_variety:reference component.placeholder.rounded store result score $placeholder.rounded gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.rounded

execute if data storage gm4_garden_variety:reference component.x.rotation.value store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.value
execute if data storage gm4_garden_variety:reference component.x.rotation.min store result score $x.rotation.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.min
execute if data storage gm4_garden_variety:reference component.x.rotation.max store result score $x.rotation.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.max

execute if data storage gm4_garden_variety:reference component.x.bend.value store result score $x.bend.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.value
execute if data storage gm4_garden_variety:reference component.x.bend.min store result score $x.bend.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.min
execute if data storage gm4_garden_variety:reference component.x.bend.max store result score $x.bend.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.max
execute if data storage gm4_garden_variety:reference component.x.bend.frequency store result score $x.bend.frequency gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.frequency
execute if data storage gm4_garden_variety:reference component.x.bend.direction store result score $x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.direction

execute if data storage gm4_garden_variety:reference component.x.curl.value store result score $x.curl.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.value
execute if data storage gm4_garden_variety:reference component.x.curl.min store result score $x.curl.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.min
execute if data storage gm4_garden_variety:reference component.x.curl.max store result score $x.curl.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.max
execute if data storage gm4_garden_variety:reference component.x.curl.frequency store result score $x.curl.frequency gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.frequency
execute if data storage gm4_garden_variety:reference component.x.curl.start store result score $x.curl.start gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.start
execute if data storage gm4_garden_variety:reference component.x.curl.stop store result score $x.curl.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.stop

execute if data storage gm4_garden_variety:reference component.y.rotation.value store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.value
execute if data storage gm4_garden_variety:reference component.y.rotation.min store result score $y.rotation.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.min
execute if data storage gm4_garden_variety:reference component.y.rotation.max store result score $y.rotation.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.max

execute if data storage gm4_garden_variety:reference component.y.bend.value store result score $y.bend.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.value
execute if data storage gm4_garden_variety:reference component.y.bend.min store result score $y.bend.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.min
execute if data storage gm4_garden_variety:reference component.y.bend.max store result score $y.bend.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.max
execute if data storage gm4_garden_variety:reference component.y.bend.frequency store result score $y.bend.frequency gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.frequency
execute if data storage gm4_garden_variety:reference component.y.bend.direction store result score $y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.direction

execute if data storage gm4_garden_variety:reference component.y.curl.value store result score $y.curl.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.value
execute if data storage gm4_garden_variety:reference component.y.curl.min store result score $y.curl.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.min
execute if data storage gm4_garden_variety:reference component.y.curl.max store result score $y.curl.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.max
execute if data storage gm4_garden_variety:reference component.y.curl.frequency store result score $y.curl.frequency gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.frequency
execute if data storage gm4_garden_variety:reference component.y.curl.start store result score $y.curl.start gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.start
execute if data storage gm4_garden_variety:reference component.y.curl.stop store result score $y.curl.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.stop

execute if data storage gm4_garden_variety:reference component.pattern.list store result score $pattern.length gm4_gv_component run data get storage gm4_garden_variety:reference component.pattern.list


# [ Flags ]

# overidden
execute store success score $target.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.target
execute store success score $pointer.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.pointer
execute store success score $length.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.length
execute store success score $placeholder.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.placeholder
execute store success score $x.rotation.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.x.rotation
execute store success score $x.bend.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.x.bend
execute store success score $x.curl.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.x.curl
execute store success score $y.rotation.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.y.rotation
execute store success score $y.bend.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.y.bend
execute store success score $y.curl.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.y.curl
execute store success score $pattern.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.pattern

# override set values when range values provided
execute if data storage gm4_garden_variety:reference component.length.min if data storage gm4_garden_variety:reference component.length.min run scoreboard players reset $length.value gm4_gv_component
execute if data storage gm4_garden_variety:reference component.x.rotation.min if data storage gm4_garden_variety:reference component.x.rotation.min run scoreboard players reset $x.rotation.value gm4_gv_component
execute if data storage gm4_garden_variety:reference component.x.bend.min if data storage gm4_garden_variety:reference component.x.bend.min run scoreboard players reset $x.bend.value gm4_gv_component
execute if data storage gm4_garden_variety:reference component.x.curl.min if data storage gm4_garden_variety:reference component.x.curl.min run scoreboard players reset $x.curl.value gm4_gv_component
execute if data storage gm4_garden_variety:reference component.y.rotation.min if data storage gm4_garden_variety:reference component.y.rotation.min run scoreboard players reset $y.rotation.value gm4_gv_component
execute if data storage gm4_garden_variety:reference component.y.bend.min if data storage gm4_garden_variety:reference component.y.bend.min run scoreboard players reset $y.bend.value gm4_gv_component
execute if data storage gm4_garden_variety:reference component.y.curl.min if data storage gm4_garden_variety:reference component.y.curl.min run scoreboard players reset $y.curl.value gm4_gv_component

# static
execute store success score $length.static gm4_gv_component if score $length.value gm4_gv_component matches ..99999
execute store success score $x.rotation.static gm4_gv_component if score $x.rotation.value gm4_gv_component matches ..99999
execute store success score $x.bend.static gm4_gv_component if score $x.bend.value gm4_gv_component matches ..99999
execute store success score $x.curl.static gm4_gv_component if score $x.curl.value gm4_gv_component matches ..99999
execute store success score $y.rotation.static gm4_gv_component if score $y.rotation.value gm4_gv_component matches ..99999
execute store success score $y.bend.static gm4_gv_component if score $y.bend.value gm4_gv_component matches ..99999
execute store success score $y.curl.static gm4_gv_component if score $y.curl.value gm4_gv_component matches ..99999

# [ Interpret ]


# generate static values
execute unless score $length.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/length
execute unless score $x.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/x_rotation
execute unless score $y.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/y_rotation

# set random bend direction
execute if score $x.bend.direction gm4_gv_component matches 0 if data storage gm4_garden_variety:reference component.x.bend.direction run function gm4_garden_variety:generation/component/line/calc/x_bend_dir
execute if score $y.bend.direction gm4_gv_component matches 0 if data storage gm4_garden_variety:reference component.y.bend.direction run function gm4_garden_variety:generation/component/line/calc/y_bend_dir




# debug
#tellraw @p [{"nbt":"component.type","storage":"gm4_garden_variety:temp"}]
#tellraw @p ["X___:   V: ",{"score":{"name":"$y.rotation.value","objective":"gm4_gv_component"}},", MN: ",{"score":{"name":"$y.rotation.min","objective":"gm4_gv_component"}},", MX: ",{"score":{"name":"$y.rotation.max","objective":"gm4_gv_component"}}]
#tellraw @p ["X___:   x: ",{"score":{"name":"$x.bend.direction","objective":"gm4_gv_component"}},", y: ",{"score":{"name":"$x.bend.direction","objective":"gm4_gv_component"}},", ?: ",{"score":{"name":"","objective":"gm4_gv_component"}}]

