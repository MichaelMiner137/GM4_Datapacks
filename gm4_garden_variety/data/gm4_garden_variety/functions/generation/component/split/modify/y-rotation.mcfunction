
execute if score $y.rotation.offset.direction gm4_gv_component matches 1 run scoreboard players operation #pointer.y.rotation gm4_gv_component += $y.rotation.offset.value gm4_gv_component
execute if score $y.rotation.offset.direction gm4_gv_component matches -1 run scoreboard players operation #pointer.y.rotation gm4_gv_component -= $y.rotation.offset.value gm4_gv_component

execute unless score #pointer.y.rotation gm4_gv_component matches -9000..9000 run function gm4_garden_variety:generation/component/split/modify/flip_rot
