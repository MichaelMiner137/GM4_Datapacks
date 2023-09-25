
# set direction
execute if score $relative.x.offset gm4_gv_component matches ..-1 run scoreboard players set $relative.x.direction gm4_gv_component -1
execute if score $relative.x.offset gm4_gv_component matches 0.. run scoreboard players set $relative.x.direction gm4_gv_component 1

# correct sign
execute if score $relative.x.offset gm4_gv_component matches ..-1 run scoreboard players operation $relative.x.offset gm4_gv_component *= #-1 gm4_garden_variety
