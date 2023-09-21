
# set direction
scoreboard players operation $relative.y.direction gm4_gv_component = #active_pointer.counted.total gm4_gv_component
scoreboard players operation $relative.y.direction gm4_gv_component %= #2 gm4_garden_variety
execute if score $relative.y.direction gm4_gv_component matches 0 run scoreboard players set $relative.y.direction gm4_gv_component -1

# correct sign
execute if score $relative.y.offset gm4_gv_component matches ..-1 run scoreboard players operation $relative.y.offset gm4_gv_component *= #-1 gm4_garden_variety
