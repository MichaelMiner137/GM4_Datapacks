
# pointer data
data remove storage gm4_garden_variety:reference pointer_raw
data modify storage gm4_garden_variety:reference pointer_raw set from entity @s
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer

# reset
scoreboard players reset * gm4_gv_component

# [ Load ]

execute store result score $pattern.length gm4_gv_component run data get storage gm4_garden_variety:reference component.pattern.list

# [ Flags ]

# overidden
execute store success score $pattern.overriden gm4_gv_component if data storage gm4_garden_variety:reference component.pattern

# static
execute store success score $length.static gm4_gv_component if data storage gm4_garden_variety:reference component.length.value
execute store success score $x.rotation.static gm4_gv_component if data storage gm4_garden_variety:reference component.x.rotation.value
execute store success score $x.bend.static gm4_gv_component if data storage gm4_garden_variety:reference component.x.bend.value
execute store success score $x.curl.static gm4_gv_component if data storage gm4_garden_variety:reference component.x.curl.value
execute store success score $y.rotation.static gm4_gv_component if data storage gm4_garden_variety:reference component.y.rotation.value
execute store success score $y.bend.static gm4_gv_component if data storage gm4_garden_variety:reference component.y.bend.value
execute store success score $y.curl.static gm4_gv_component if data storage gm4_garden_variety:reference component.y.curl.value

# [ Interpret ]

# generate static values
execute unless score $length.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/length
execute unless score $x.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/x_rotation
execute unless score $y.rotation.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/y_rotation

# set random bend direction
execute if score $x.bend.direction gm4_gv_component matches 0 if data storage gm4_garden_variety:reference component.x.bend.direction run function gm4_garden_variety:generation/component/line/calc/x_bend_dir
execute if score $y.bend.direction gm4_gv_component matches 0 if data storage gm4_garden_variety:reference component.y.bend.direction run function gm4_garden_variety:generation/component/line/calc/y_bend_dir

# [ Pointer Data ]

execute unless score $x.rotation.overriden gm4_gv_component matches 1 store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.rotation
execute unless score $y.rotation.overriden gm4_gv_component matches 1 store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.rotation
execute unless data storage gm4_garden_variety:reference component.x.bend.direction store result score $x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.bend.direction
execute unless data storage gm4_garden_variety:reference component.y.bend.direction store result score $y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.bend.direction
