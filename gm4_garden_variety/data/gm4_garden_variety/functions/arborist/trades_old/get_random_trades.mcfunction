# run from TODO

function gm4_garden_variety:get/random_seed


# set trade amounts
scoreboard players set trade_0_amount gm4_gv_arborist 1
scoreboard players set trade_1_amount gm4_gv_arborist 1
scoreboard players set trade_2_amount gm4_gv_arborist 1
scoreboard players set trade_3_amount gm4_gv_arborist 2
scoreboard players set trade_4_amount gm4_gv_arborist 0
scoreboard players operation trade_3-4_amount_chance gm4_gv_arborist = current_seed gm4_tree_data
scoreboard players operation trade_3-4_amount_chance gm4_gv_arborist %= #10 gm4_math_num
execute if score trade_3-4_amount_chance gm4_gv_arborist matches 0..7 run scoreboard players add trade_3_amount gm4_gv_arborist 1
execute if score trade_3-4_amount_chance gm4_gv_arborist matches 8..9 run scoreboard players add trade_4_amount gm4_gv_arborist 1

# register trades from expansions
function #gm4_garden_variety:arborist/register_trades

# vanilla saplings
execute if score trade_0_amount gm4_gv_arborist matches 1.. run function gm4_garden_variety:arborist/trades/trade_0
execute if score trade_1_amount gm4_gv_arborist matches 1.. run function gm4_garden_variety:arborist/trades/trade_1
# tools
execute if score trade_2_amount gm4_gv_arborist matches 1.. run function gm4_garden_variety:arborist/trades/trade_2
# blocks
execute if score trade_3_amount gm4_gv_arborist matches 1.. run function gm4_garden_variety:arborist/trades/trade_3
# decor blocks
execute if score trade_4_amount gm4_gv_arborist matches 1.. run function gm4_garden_variety:arborist/trades/trade_4
# natural trees
#function gm4_garden_variety:arborist/trades/trade_natural
#kill @e[type=armor_stand,tag=gm4_gv_natural_trade_option]
# decorative trees
#function gm4_garden_variety:arborist/trades/trade_decorative
#kill @e[type=armor_stand,tag=gm4_gv_decorative_trade_option]
# harvestable
#function gm4_garden_variety:arborist/trades/trade_harvestable
#kill @e[type=armor_stand,tag=gm4_gv_harvestable_trade_option]




