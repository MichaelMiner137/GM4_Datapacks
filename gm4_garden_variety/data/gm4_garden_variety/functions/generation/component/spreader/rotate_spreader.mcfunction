
# get current pattern
execute if score $pattern.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/pattern/current_value

# set placeholder data
data remove storage gm4_garden_variety:new placeholder
execute store result storage gm4_garden_variety:new placeholder.current_length int 1 run scoreboard players get #builder.length.left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.length_left int 1 run scoreboard players get #builder.length.left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.current_pattern int 1 run scoreboard players get #builder.current_pattern gm4_gv_component

# build segment
execute unless score $placeholder.quality gm4_gv_component matches 2..6 run scoreboard players set #builder.segment.left gm4_gv_component 1
execute if score $placeholder.quality gm4_gv_component matches 2 run scoreboard players set #builder.segment.left gm4_gv_component 2
execute if score $placeholder.quality gm4_gv_component matches 3 run scoreboard players set #builder.segment.left gm4_gv_component 3
execute if score $placeholder.quality gm4_gv_component matches 4 run scoreboard players set #builder.segment.left gm4_gv_component 5
execute if score $placeholder.quality gm4_gv_component matches 5 run scoreboard players set #builder.segment.left gm4_gv_component 10
execute if score $placeholder.quality gm4_gv_component matches 6 run scoreboard players set #builder.segment.left gm4_gv_component 20
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_segment

# modify rotation and update
execute if score $y.curl.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/y_curl
execute if score $y.bend.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/y_bend
execute if score $x.curl.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/x_curl
execute if score $x.bend.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/mod/x_bend
execute store result entity @s Rotation[0] float 1 run scoreboard players get #builder.x.rotation gm4_gv_component
execute store result entity @s Rotation[1] float 1 run scoreboard players get #builder.y.rotation gm4_gv_component

# counters
scoreboard players remove #builder.length.left gm4_gv_component 1
scoreboard players add #builder.length.current gm4_gv_component 1

# pointer
execute if score $pointer.overriden gm4_gv_component matches 1 if score #builder.length.current gm4_gv_component = $pointer.location gm4_gv_component if data storage gm4_garden_variety:reference component.pointer{method:"forwards"} positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/create
execute if score $pointer.overriden gm4_gv_component matches 1 if score #builder.length.left gm4_gv_component = $pointer.location gm4_gv_component if data storage gm4_garden_variety:reference component.pointer{method:"backwards"} positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/create

# loop
execute if score #builder.length.left gm4_gv_component matches 1.. rotated as @s run function gm4_garden_variety:generation/component/spreader/rotate_spreader
