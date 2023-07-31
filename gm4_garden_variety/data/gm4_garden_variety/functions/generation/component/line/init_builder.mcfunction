
# set rotation
execute store result entity @s Rotation[0] float 0.01 store result score #builder.x.rotation gm4_gv_component run scoreboard players get $x.rotation.value gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 store result score #builder.y.rotation gm4_gv_component run scoreboard players get $y.rotation.value gm4_gv_component

# set rotation direction
scoreboard players operation #builder.x.bend.direction gm4_gv_component = $x.bend.direction gm4_gv_component
scoreboard players operation #builder.y.bend.direction gm4_gv_component = $y.bend.direction gm4_gv_component

# set segment length
execute unless score $placeholder.quality gm4_gv_component matches 2..6 run scoreboard players set #builder.segment.set gm4_gv_component 1
execute if score $placeholder.quality gm4_gv_component matches 2 run scoreboard players set #builder.segment.set gm4_gv_component 2
execute if score $placeholder.quality gm4_gv_component matches 3 run scoreboard players set #builder.segment.set gm4_gv_component 3
execute if score $placeholder.quality gm4_gv_component matches 4 run scoreboard players set #builder.segment.set gm4_gv_component 5
execute if score $placeholder.quality gm4_gv_component matches 5 run scoreboard players set #builder.segment.set gm4_gv_component 10
execute if score $placeholder.quality gm4_gv_component matches 6 run scoreboard players set #builder.segment.set gm4_gv_component 20

# build
scoreboard players operation #builder.length.left gm4_gv_component = $length.value gm4_gv_component
scoreboard players set #builder.length.current gm4_gv_component 1
execute at @s rotated as @s run function gm4_garden_variety:generation/component/line/build_block

# clean up
kill @s
