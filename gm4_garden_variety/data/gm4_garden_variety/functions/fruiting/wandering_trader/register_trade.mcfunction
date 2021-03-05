# Adds trades from this expansion to the fruiting trees trade pool. The base randomly will select one trade from the trade pool to be added to a wandering trader.
# @s = a wandering trader without the gm4_fruiting_trader tag (aka without the new trades)
# at @s
# run from gm4_fruiting_trees:wandering_trader/add_trade

# summon armor stands with trade items from loot table

# king palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_fruiting_trader_trade_option","gm4_king_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:5b},{}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_fruiting_trees:{trade_options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,limit=1,tag=gm4_king_palm_sapling_trade] armor.head loot gm4_garden_variety:items/sapling/king_palm

# caranday palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_fruiting_trader_trade_option","gm4_caranday_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:5b},{}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_fruiting_trees:{trade_options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,limit=1,tag=gm4_caranday_palm_sapling_trade] armor.head loot gm4_garden_variety:items/sapling/caranday_palm

# fox tail palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_fruiting_trader_trade_option","gm4_fox_tail_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:5b},{}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_fruiting_trees:{trade_options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,limit=1,tag=gm4_fox_tail_palm_sapling_trade] armor.head loot gm4_garden_variety:items/sapling/fox_tail_palm

# windmill palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_fruiting_trader_trade_option","gm4_windmill_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:5b},{}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_fruiting_trees:{trade_options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,limit=1,tag=gm4_windmill_palm_sapling_trade] armor.head loot gm4_garden_variety:items/sapling/windmill_palm

# spindle palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_fruiting_trader_trade_option","gm4_spindle_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:5b},{}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_fruiting_trees:{trade_options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,limit=1,tag=gm4_spindle_palm_sapling_trade] armor.head loot gm4_garden_variety:items/sapling/spindle_palm

# coconut palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_fruiting_trader_trade_option","gm4_coconut_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:5b},{}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_fruiting_trees:{trade_options:{maxUses:8,rewardXp:1b,xp:1,priceMultiplier:0.05f}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,limit=1,tag=gm4_coconut_palm_sapling_trade] armor.head loot gm4_garden_variety:items/sapling/coconut_palm