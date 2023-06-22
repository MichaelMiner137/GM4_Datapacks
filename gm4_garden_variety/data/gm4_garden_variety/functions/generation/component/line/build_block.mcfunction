
# get current pattern
execute if score $pattern.overriden gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/pattern/current_value

# get facing direction
scoreboard players set #builder.facing gm4_gv_component 0
execute if score #builder.x.rotation gm4_gv_component matches 135..180 store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component 2
execute if score #builder.x.rotation gm4_gv_component matches -180..-135 store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component 2
execute if score #builder.x.rotation gm4_gv_component matches -135..-45 store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component -2
execute if score #builder.x.rotation gm4_gv_component matches -45..45 store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component 3
execute if score #builder.x.rotation gm4_gv_component matches 45..135 store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component -3
execute if score #builder.y.rotation gm4_gv_component matches ..-30 store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component 1
execute if score #builder.y.rotation gm4_gv_component matches 30.. store result score #builder.facing.abs gm4_gv_component run scoreboard players set #builder.facing gm4_gv_component -1
execute if score #builder.facing.abs gm4_gv_component matches ..-1 run scoreboard players operation #builder.facing.abs gm4_gv_component *= #-1 gm4_garden_variety

# set placeholder data
data remove storage gm4_garden_variety:new placeholder
execute store result storage gm4_garden_variety:new placeholder.identifier int 1 run scoreboard players get $placeholder.identifier gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.seed int 1 run scoreboard players get $sub_seed gm4_gv_generation
execute store result storage gm4_garden_variety:new placeholder.current_length int 1 run scoreboard players get #builder.length.left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.length_left int 1 run scoreboard players get #builder.length.left gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.current_pattern int 1 run scoreboard players get #builder.current_pattern gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.facing int 1 run scoreboard players get #builder.facing gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.axis int 1 run scoreboard players get #builder.facing.abs gm4_gv_component
execute store result storage gm4_garden_variety:new placeholder.pointer_id int 1 run scoreboard players get @s gm4_gv_pointer

# build segment
scoreboard players operation #builder.segment.left gm4_gv_component = #builder.segment.set gm4_gv_component 
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

# debug
#tellraw @p [{"score":{"name":"$pointer.overriden","objective":"gm4_gv_component"}},"  >  ",{"score":{"name":"#builder.length.left","objective":"gm4_gv_component"}}," = ",{"score":{"name":"$pointer.location","objective":"gm4_gv_component"}}]

# pointer
execute if score $pointer.overriden gm4_gv_component matches 1 if score #builder.length.current gm4_gv_component = $pointer.location gm4_gv_component if data storage gm4_garden_variety:reference component.pointer{method:"forwards"} positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/create
execute if score $pointer.overriden gm4_gv_component matches 1 if score #builder.length.left gm4_gv_component = $pointer.location gm4_gv_component if data storage gm4_garden_variety:reference component.pointer{method:"backwards"} positioned ^ ^ ^1 run function gm4_garden_variety:generation/component/line/pointer/create

# loop
execute if score #builder.length.left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/line/build_block
