
# set direction
execute if score #pointer.x.bend.direction gm4_gv_component matches ..-1 run scoreboard players set $x.bend.direction gm4_gv_component -1
execute if score #pointer.x.bend.direction gm4_gv_component matches 1.. run scoreboard players set $x.bend.direction gm4_gv_component 1

# correct sign
execute if score $x.bend.value gm4_gv_component matches ..-1 run scoreboard players operation $x.bend.value gm4_gv_component *= #-1 gm4_garden_variety
