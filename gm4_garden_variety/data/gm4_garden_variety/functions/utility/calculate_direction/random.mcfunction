
# set direction
function gm4_garden_variety:generation/seed/next_seed

$scoreboard players operation $(output) = $sub_seed gm4_gv_generation
$scoreboard players operation $(output) %= #2 gm4_garden_variety
$execute if score $(output) matches 0 run scoreboard players set $(output) -1

# correct sign
$execute if score $(fix_sign) matches ..-1 run scoreboard players operation $(fix_sign) *= #-1 gm4_garden_variety
