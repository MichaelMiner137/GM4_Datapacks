# run from TODO



# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes

### sell ###

# pick group of items to sell
scoreboard players operation trade_sell_group_percent gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_sell_group_percent gm4_gv_trades %= #10 gm4_math_num
function gm4_garden_variety:get/next_seed_value
execute if score trade_sell_group_percent gm4_gv_trades matches 0..3 run scoreboard players set trade_sell_group gm4_gv_trades 0
execute if score trade_sell_group_percent gm4_gv_trades matches 4..7 run scoreboard players set trade_sell_group gm4_gv_trades 1
execute if score trade_sell_group_percent gm4_gv_trades matches 8..9 run scoreboard players set trade_sell_group gm4_gv_trades 2

# pick item to sell within group
scoreboard players operation trade_sell_item gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 0 run scoreboard players operation trade_sell_item gm4_gv_trades %= #6 gm4_math_num
execute if score trade_sell_group gm4_gv_trades matches 1 run scoreboard players operation trade_sell_item gm4_gv_trades %= #3 gm4_math_num
execute if score trade_sell_group gm4_gv_trades matches 2 run scoreboard players operation trade_sell_item gm4_gv_trades %= #3 gm4_math_num
function gm4_garden_variety:get/next_seed_value

# set item to sell within group 0
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:oak_leaves"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:birch_leaves"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:spruce_leaves"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:jungle_leaves"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:dark_oak_leaves"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:acacia_leaves"

# set item to sell within group 1
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:dirt"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:coarse_dirt"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:podzol"

# set item to sell within group 2
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:vine"
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:cocoa_beans"
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:bee_nest"

# set sell amounts [0-1.A|1-3] [2.0-1|1-3] [2.2|1]
scoreboard players operation trade_sell_amount gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 0..1 run scoreboard players operation trade_sell_amount gm4_gv_trades %= #3 gm4_math_num
execute if score trade_sell_group gm4_gv_trades matches 0..1 run scoreboard players add trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 0..1 run scoreboard players operation trade_sell_amount gm4_gv_trades %= #3 gm4_math_num
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 0..1 run scoreboard players add trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_amount gm4_gv_trades = current_seed gm4_tree_data run scoreboard players set trade_sell_amount gm4_gv_trades 1
function gm4_garden_variety:get/next_seed_value

# store amounts
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.Count byte 1 run scoreboard players get trade_sell_amount gm4_gv_trades

### buy ###

# set buy item
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:emerald"

# set buy amount
execute if score trade_sell_group gm4_gv_trades matches 0..1 run scoreboard players operation trade_buy_amount gm4_gv_trades = trade_sell_amount gm4_gv_trades
execute if score trade_sell_group gm4_gv_trades matches 0..1 run scoreboard players operation trade_buy_amount gm4_gv_trades /= #2 gm4_math_num
execute if score trade_buy_amount gm4_gv_trades matches 0 run scoreboard players set trade_buy_amount gm4_gv_trades 1
execute if score trade_sell_group gm4_gv_trades matches 2 run scoreboard players operation trade_buy_amount gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 2 run scoreboard players operation trade_buy_amount gm4_gv_trades %= #3 gm4_math_num
execute if score trade_sell_group gm4_gv_trades matches 2 run scoreboard players add trade_buy_amount gm4_gv_trades 3

function gm4_garden_variety:get/next_seed_value
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count byte 1 run scoreboard players get trade_buy_amount gm4_gv_trades

### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 15
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 8
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 4
execute if score trade_sell_group gm4_gv_trades matches 2 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 1

# store trades into nbt
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# loop
scoreboard players remove trade_3_amount gm4_gv_trades 1
execute if score trade_3_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_3