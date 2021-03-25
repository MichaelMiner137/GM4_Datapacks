# run from TODO

# select random trade
data modify storage gm4_fruiting_trees:temp/arborist/random_decorative_trade_data armor_stand_data set from entity @e[type=armor_stand,tag=gm4_gv_decorative_trade_option,limit=1,sort=random] {}

# interpret trade data (ArmorItems[0]: metadata; HandItems[0]: buy; HandItems[1]: buyB; ArmorItems[3]: sell)
data modify storage gm4_fruiting_trees:temp/arborist/next_trade trade set from storage gm4_fruiting_trees:temp/arborist/random_decorative_trade_data armor_stand_data.ArmorItems[0].tag.gm4_garden_variety.trade_options
data modify storage gm4_fruiting_trees:temp/arborist/next_trade trade.buy set from storage gm4_fruiting_trees:temp/arborist/random_decorative_trade_data armor_stand_data.HandItems[0]
data modify storage gm4_fruiting_trees:temp/arborist/next_trade trade.buyB set from storage gm4_fruiting_trees:temp/arborist/random_decorative_trade_data armor_stand_data.HandItems[1]
data modify storage gm4_fruiting_trees:temp/arborist/next_trade trade.sell set from storage gm4_fruiting_trees:temp/arborist/random_decorative_trade_data armor_stand_data.ArmorItems[3]
data remove storage gm4_fruiting_trees:temp/arborist/random_decorative_trade_data armor_stand_data

# add trade
data modify entity @s Offers.Recipes append from storage gm4_fruiting_trees:temp/arborist/next_trade trade
data remove storage gm4_fruiting_trees:temp/arborist/next_trade trade

# loop
scoreboard players remove decorative_trades gm4_gv_arborist 1
execute if score decorative_trades gm4_gv_arborist matches 1.. run function gm4_garden_variety:arborist/trades/trade_decorative