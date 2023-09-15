
# set direction
execute if score #pointer.y.bend.direction gm4_gv_component matches ..-1 run scoreboard players set $y.bend.direction gm4_gv_component -1
execute if score #pointer.y.bend.direction gm4_gv_component matches 1.. run scoreboard players set $y.bend.direction gm4_gv_component 1

# correct sign
execute if score $y.bend.value gm4_gv_component matches ..-1 run scoreboard players operation $y.bend.value gm4_gv_component *= #-1 gm4_garden_variety
