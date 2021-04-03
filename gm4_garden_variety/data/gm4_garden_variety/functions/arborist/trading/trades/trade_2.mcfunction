# run from TODO



# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes

### sell ###

# pick group of items to sell
scoreboard players operation trade_sell_group_percent gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_sell_group_percent gm4_gv_trades %= #10 gm4_gv_math_num
function gm4_garden_variety:arborist/get/next_seed_value
execute if score trade_sell_group_percent gm4_gv_trades matches 0..8 run scoreboard players set trade_sell_group gm4_gv_trades 0
execute if score trade_sell_group_percent gm4_gv_trades matches 9 run scoreboard players set trade_sell_group gm4_gv_trades 1

# pick item to sell within group
scoreboard players operation trade_sell_item gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 0 run scoreboard players operation trade_sell_item gm4_gv_trades %= #5 gm4_gv_math_num
execute if score trade_sell_group gm4_gv_trades matches 1 run scoreboard players operation trade_sell_item gm4_gv_trades %= #6 gm4_gv_math_num
function gm4_garden_variety:arborist/get/next_seed_value

# set item to sell within group 0
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:name_tag"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:bone_meal"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:shears"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:iron_hoe"
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:iron_shovel"

# set item to sell within group 1
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:oak_sign"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:birch_sign"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:spruce_sign"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:jungle_sign"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:dark_oak_sign"
execute if score trade_sell_group gm4_gv_trades matches 1 if score trade_sell_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:acacia_sign"

# set sell amounts (1) [0.0|1-2] [0.1|1-3*2] [1.A|1-3]
scoreboard players operation trade_sell_amount gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 0 run scoreboard players operation trade_sell_amount gm4_gv_trades %= #2 gm4_gv_math_num
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 0 run scoreboard players add trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 1 run scoreboard players operation trade_sell_amount gm4_gv_trades %= #4 gm4_gv_math_num
execute if score trade_sell_group gm4_gv_trades matches 0 if score trade_sell_item gm4_gv_trades matches 1 run scoreboard players add trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_group gm4_gv_trades matches 1 run scoreboard players operation trade_sell_amount gm4_gv_trades = current_seed gm4_tree_data
execute if score trade_sell_group gm4_gv_trades matches 1 run scoreboard players operation trade_sell_amount gm4_gv_trades %= #3 gm4_gv_math_num
execute if score trade_sell_group gm4_gv_trades matches 1 run scoreboard players add trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_amount gm4_gv_trades = current_seed gm4_tree_data run scoreboard players set trade_sell_amount gm4_gv_trades 1
function gm4_garden_variety:arborist/get/next_seed_value

# store amounts
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.Count byte 1 run scoreboard players get trade_sell_amount gm4_gv_trades

### buy ###

# set buy item
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:emerald"

# set buy amount (2-4)
scoreboard players operation trade_buy_amount gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_buy_amount gm4_gv_trades %= #3 gm4_gv_math_num
function gm4_garden_variety:arborist/get/next_seed_value
scoreboard players add trade_buy_amount gm4_gv_trades 2

# store amounts
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count byte 1 run scoreboard players get trade_buy_amount gm4_gv_trades

### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 10
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 8

# store trades into nbt
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# loop
scoreboard players remove trade_2_amount gm4_gv_trades 1
execute if score trade_2_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_2