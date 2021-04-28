# run from TODO


# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes
data remove storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data

### initial items ###

# select random trade
data modify storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data set from entity @e[type=armor_stand,tag=gm4_gv_natural_trade_option,limit=1,sort=random] {}

# interpret trade data (ArmorItems[0]: metadata; HandItems[0]: buy; HandItems[1]: buyB; ArmorItems[3]: sell)
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes set from storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data.ArmorItems[0].tag.gm4_garden_variety.trade_options
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy set from storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data.HandItems[0]
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB set from storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data.ArmorItems[1]
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell set from storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data.ArmorItems[3]

### modify ###

# modify lore
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.tag.display.Lore[0] set value '{"italic":true,"color":"gray","text":"A wild sapling bought from the arborist"}'

# set buy range
execute store result score trade_buy_amount_min gm4_gv_trades run data get storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data.HandItems[0].Count
execute store result score trade_buy_amount_max gm4_gv_trades run data get storage gm4_garden_variety:data/arborist/random_trade_data armor_stand_data.HandItems[1].Count
scoreboard players operation trade_buy_amount gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_buy_amount gm4_gv_trades %= trade_buy_amount_max gm4_gv_trades
scoreboard players operation trade_buy_amount gm4_gv_trades += trade_buy_amount_min gm4_gv_trades

function gm4_garden_variety:data/get/next_seed_value
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count byte 1 run scoreboard players get trade_buy_amount gm4_gv_trades

### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 10

# store trades into nbt
data modify entity @s Offers.Recipes insert 6 from storage gm4_garden_variety:data/arborist/next_trade Recipes

# update debug storage
data modify storage gm4_garden_variety:debug/arborist trades.sell_natural_saplings append from storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id

# loop
scoreboard players remove trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/sell_natural_saplings