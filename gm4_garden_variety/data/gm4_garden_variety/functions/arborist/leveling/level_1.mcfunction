# run from TODO

# change level
data modify entity @s VillagerData.level set value 1

# change level tag
tag @s add gm4_gv_level_1


## add trades
# sell_saplings OR buy_saplings
loot replace entity @s weapon loot gm4_garden_variety:arborist/trades/level_1/choose_trade_1
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell set from entity @s HandItems[0]
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. if data entity @s HandItems[0].tag.display{Name:'{"text":"sell_saplings"}'} as @s run function gm4_garden_variety:arborist/trading/trades/level_1/sell_saplings
execute if score trade_amount gm4_gv_trades matches 1.. if data entity @s HandItems[0].tag.display{Name:'{"text":"buy_saplings"}'} as @s run function gm4_garden_variety:arborist/trading/trades/level_1/buy_saplings
# barter_saplings
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. as @s run function gm4_garden_variety:arborist/trading/trades/level_1/barter_saplings
# sell_food OR buy_materials
loot replace entity @s weapon loot gm4_garden_variety:arborist/trades/level_1/choose_trade_3
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell set from entity @s HandItems[0]
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. if data entity @s HandItems[0].tag.display{Name:'{"text":"sell_food"}'} as @s run function gm4_garden_variety:arborist/trading/trades/level_1/sell_food
execute if score trade_amount gm4_gv_trades matches 1.. if data entity @s HandItems[0].tag.display{Name:'{"text":"buy_materials"}'} as @s run function gm4_garden_variety:arborist/trading/trades/level_1/buy_materials





