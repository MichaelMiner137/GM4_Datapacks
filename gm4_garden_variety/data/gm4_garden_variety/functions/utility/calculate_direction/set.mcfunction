
# set direction
$execute if score $(input) matches ..-1 run scoreboard players set $(output) -1
$execute if score $(input) matches 0.. run scoreboard players set $(output) 1

# correct sign
$execute if score $(fix_sign) matches ..-1 run scoreboard players operation $(fix_sign) *= #-1 gm4_garden_variety
