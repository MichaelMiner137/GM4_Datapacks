# run from TODO



# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes

### sell ###

# pick group of items to sell
scoreboard players operation trade_sell_group_percent gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_sell_group_percent gm4_gv_trades %= #100 gm4_gv_math_num
function gm4_garden_variety:arborist/get/next_seed_value
execute if score trade_sell_group_percent gm4_gv_trades matches 0..89 run scoreboard players set trade_sell_group gm4_gv_trades 0
execute if score trade_sell_group_percent gm4_gv_trades matches 90..99 run scoreboard players set trade_sell_group gm4_gv_trades 1

# pick item to sell within group
scoreboard players operation trade_sell_item gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 0 run scoreboard players operation trade_sell_item gm4_gv_trades %= #6 gm4_gv_math_num
execute if score trade_sell_group gm4_gv_trades matches 1 run scoreboard players operation trade_sell_item gm4_gv_trades %= #2 gm4_gv_math_num
function gm4_garden_variety:arborist/get/next_seed_value

# set item to sell within group 0
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:vine"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:fern"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:large_fern"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:dead_bush"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:flower_pot"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:cocoa_beans"

# set item to sell within group 1
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:bee_nest"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:cobweb"

# set sell amounts
scoreboard players operation trade_sell_amount_percent gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_sell_amount_percent gm4_gv_trades %= #20 gm4_gv_math_num
execute if score trade_sell_amount_percent gm4_gv_trades matches 0 if score trade_sell_amount gm4_gv_trades matches 0..12 run scoreboard players set trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_amount_percent gm4_gv_trades matches 0 if score trade_sell_amount gm4_gv_trades matches 13..18 run scoreboard players set trade_sell_amount gm4_gv_trades 2
execute if score trade_sell_amount_percent gm4_gv_trades matches 0 if score trade_sell_amount gm4_gv_trades matches 19 run scoreboard players set trade_sell_amount gm4_gv_trades 3
execute if score trade_sell_amount_percent gm4_gv_trades matches 1 if score trade_sell_amount gm4_gv_trades matches 0..18 run scoreboard players set trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_amount_percent gm4_gv_trades matches 1 if score trade_sell_amount gm4_gv_trades matches 19 run scoreboard players set trade_sell_amount gm4_gv_trades 2
function gm4_garden_variety:arborist/get/next_seed_value

# store amounts
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.Count byte 1 run scoreboard players get trade_sell_amount gm4_gv_trades

### buy ###

# set buy item
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:emerald"

# set buy amount
scoreboard players operation trade_buy_amount gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_buy_amount gm4_gv_trades %= #3 gm4_gv_math_num
scoreboard players add trade_buy_amount gm4_gv_trades 1

function gm4_garden_variety:arborist/get/next_seed_value
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count byte 1 run scoreboard players get trade_buy_amount gm4_gv_trades

### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 10
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 4
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 1

# store trades into nbt
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# loop
scoreboard players remove trade_4_amount gm4_gv_trades 1
execute if score trade_4_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_3