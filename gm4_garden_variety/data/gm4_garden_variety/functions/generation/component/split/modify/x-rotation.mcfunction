
execute if score $x.rotation.offset.direction gm4_gv_component matches 1 run scoreboard players operation #pointer.x.rotation gm4_gv_component += $x.rotation.offset.value gm4_gv_component
execute if score $x.rotation.offset.direction gm4_gv_component matches -1 run scoreboard players operation #pointer.x.rotation gm4_gv_component -= $x.rotation.offset.value gm4_gv_component

execute if score #pointer.x.rotation gm4_gv_component matches 18001.. run scoreboard players remove #pointer.x.rotation gm4_gv_component 36000
execute if score #pointer.x.rotation gm4_gv_component matches ..-18001 run scoreboard players add #pointer.x.rotation gm4_gv_component 36000
