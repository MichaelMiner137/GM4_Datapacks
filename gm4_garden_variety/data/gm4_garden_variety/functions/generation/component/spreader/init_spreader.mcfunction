
# set rotation
execute store result entity @s Rotation[0] float 1 store result score #spreader.x.rotation gm4_gv_component run scoreboard players get $x.rotation.value gm4_gv_component
execute store result entity @s Rotation[1] float 1 store result score #spreader.y.rotation gm4_gv_component run scoreboard players get $y.rotation.value gm4_gv_component

# set rotation direction
scoreboard players operation #spreader.x.bend.direction gm4_gv_component = $x.bend.direction gm4_gv_component
scoreboard players operation #spreader.y.bend.direction gm4_gv_component = $y.bend.direction gm4_gv_component

# spread
scoreboard players operation #spreader.length.left gm4_gv_component = $length.value gm4_gv_component
scoreboard players set #spreader.length.current gm4_gv_component 1
#execute at @s rotated as @s run function gm4_garden_variety:generation/component/spreader/rotate_spreader
