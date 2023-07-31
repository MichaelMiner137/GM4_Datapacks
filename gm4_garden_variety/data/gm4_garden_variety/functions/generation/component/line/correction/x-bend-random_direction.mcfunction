
# set direction
function gm4_garden_variety:generation/seed/next_seed

scoreboard players operation $x.bend.direction gm4_gv_component = $sub_seed gm4_gv_generation
scoreboard players operation $x.bend.direction gm4_gv_component %= #2 gm4_garden_variety
execute if score $x.bend.direction gm4_gv_component matches 0 run scoreboard players set $x.bend.direction gm4_gv_component -1

# correct sign
execute if score $x.bend.value gm4_gv_component matches ..-1 run scoreboard players operation $x.bend.value gm4_gv_component *= #-1 gm4_garden_variety
