# run from TODO


### initialize ###

# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes

# summon armor stand marker
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:0b,Silent:1b,Tags:["gm4_arborist_trade"],NoGravity:1b}


### sell ###

# set trade item
data modify entity @e[type=armor_stand,tag=gm4_arborist_trade,limit=1,sort=nearest] HandItems[0] set from storage gm4_garden_variety:data/arborist/last_sell Recipes.sell
execute as @e[type=minecraft:armor_stand,tag=gm4_arborist_trade,sort=nearest] run loot replace entity @s weapon.mainhand loot gm4_garden_variety:arborist/trades/barter_saplings/sell
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell set from entity @e[type=armor_stand,tag=gm4_arborist_trade,limit=1,sort=nearest] HandItems[0]


### buy ###

# set trade item
data modify entity @e[type=armor_stand,tag=gm4_arborist_trade,limit=1,sort=nearest] ArmorItems[0] set from storage gm4_garden_variety:data/arborist/next_trade Recipes.sell
execute as @e[type=minecraft:armor_stand,tag=gm4_arborist_trade,sort=nearest] run loot replace entity @s weapon.mainhand loot gm4_garden_variety:arborist/trades/barter_saplings/buy
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy set from entity @e[type=armor_stand,tag=gm4_arborist_trade,limit=1,sort=nearest] HandItems[0]


### buyb ###

# set trade item
data modify entity @e[type=armor_stand,tag=gm4_arborist_trade,limit=1,sort=nearest] ArmorItems[1] set from storage gm4_garden_variety:data/arborist/next_trade Recipes.buy
execute as @e[type=minecraft:armor_stand,tag=gm4_arborist_trade,sort=nearest] run loot replace entity @s weapon.mainhand loot gm4_garden_variety:arborist/trades/barter_saplings/buyb
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB set from entity @e[type=armor_stand,tag=gm4_arborist_trade,limit=1,sort=nearest] HandItems[0]
data modify storage gm4_garden_variety:test test set from storage gm4_garden_variety:data/arborist/next_trade Recipes.buyb


### finalize ###

# kill armor stand marker
kill @e[tag=gm4_arborist_trade]

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 1
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 8
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.priceMultiplier set value 1ff

# store trades into nbt
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# update debug storage
data modify storage gm4_garden_variety:debug/arborist trades.level_1.barter_saplings append from storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id

# loop
scoreboard players remove trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/barter_saplings