# run from TODO

# king palm sapling
summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["gm4_gv_natural_trade_option","gm4_king_palm_sapling_trade"],NoGravity:1b,HandItems:[{id:"minecraft:emerald",Count:2b},{id:"minecraft:emerald",Count:4b}],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{gm4_garden_variety:{trade_options:{maxUses:8}}}},{},{},{}]}
loot replace entity @e[type=minecraft:armor_stand,tag=gm4_king_palm_sapling_trade] armor.head loot gm4_natural_trees:items/sapling/king_palm
