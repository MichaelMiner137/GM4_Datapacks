
# set direction
execute if score $y.rotation.offset.value gm4_gv_component matches ..-1 run scoreboard players set $y.rotation.offset.direction gm4_gv_component -1
execute if score $y.rotation.offset.value gm4_gv_component matches 0.. run scoreboard players set $y.rotation.offset.direction gm4_gv_component 1

# correct sign
execute if score $y.rotation.offset.value gm4_gv_component matches ..-1 run scoreboard players operation $y.rotation.offset.value gm4_gv_component *= #-1 gm4_garden_variety
