
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
execute unless score $y.curl.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-curl
execute unless score $y.bend.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/y-bend
execute unless score $x.curl.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-curl
execute unless score $x.bend.value gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/modify/x-bend
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #builder.x.rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #builder.y.rotation gm4_gv_component

# debug
#tellraw @p [{"score":{"name":"$pointer.overriden","objective":"gm4_gv_component"}},"  >  ",{"score":{"name":"#builder.length.left","objective":"gm4_gv_component"}}," = ",{"score":{"name":"$pointer.location","objective":"gm4_gv_component"}}]
#tellraw @p [{"score":{"name":"#builder.length.current","objective":"gm4_gv_component"}}," >     X: ",{"score":{"name":"$x.bend.value","objective":"gm4_gv_component"}}," += ",{"score":{"name":"#builder.x.rotation","objective":"gm4_gv_component"}},"     Y: ",{"score":{"name":"$y.bend.value","objective":"gm4_gv_component"}}," += ",{"score":{"name":"#builder.y.rotation","objective":"gm4_gv_component"}}]

# counters
scoreboard players remove #builder.length.left gm4_gv_component 1
scoreboard players add #builder.length.current gm4_gv_component 1

# pointer
execute if score $pointer.begin.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/begin
execute if score $pointer.middle.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/middle
execute if score $pointer.end.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/end
execute if score $pointer.fill.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/line/pointer/fill

# loop
execute if score #builder.length.left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/line/build_block
