
# ===== Applicable Weapons =====
data remove storage gm4_potion_tipping:config applicable_weapons
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:wooden_sword", max_liquids:1 ,max_uses:100}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:stone_sword", max_liquids:1 ,max_uses:100}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:iron_sword", max_liquids:1 ,max_uses:75}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:golden_sword", max_liquids:3 ,max_uses:300}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:diamond_sword", max_liquids:1 ,max_uses:50}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:netherite_sword", max_liquids:1 ,max_uses:50}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:wooden_axe", max_liquids:1 ,max_uses:100}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:stone_axe", max_liquids:1 ,max_uses:100}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:iron_axe", max_liquids:1 ,max_uses:75}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:golden_axe", max_liquids:3 ,max_uses:300}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:diamond_axe", max_liquids:1 ,max_uses:50}
data modify storage gm4_potion_tipping:config applicable_weapons append value {id:"minecraft:netherite_axe", max_liquids:1 ,max_uses:50}

# ===== Applicable Liquids =====
data remove storage gm4_potion_tipping:config applicable_liquids
data modify storage gm4_potion_tipping:config applicable_liquids append value {id:"minecraft:water_bucket", action:"remove_oldest"}
data modify storage gm4_potion_tipping:config applicable_liquids append value {id:"gm4_potion_tipping:water", action:"remove_newest"}
data modify storage gm4_potion_tipping:config applicable_liquids append value {id:"minecraft:milk_bucket", action:"remove_all"}
data modify storage gm4_potion_tipping:config applicable_liquids append value {id:"minecraft:potion", action:"apply_potion"}

# ===== Applicable Potions =====
data remove storage gm4_potion_tipping:config applicable_potions
# speed (swiftness)
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:swiftness", uses:50, name:'{"color":"#33EBFF","text":"Swiftness"}', effects:[{id:"minecraft:speed",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_swiftness", uses:50, name:'{"color":"#33EBFF","text":"Long Swiftness"}', effects:[{id:"minecraft:speed",amplifier:0b,duration:9600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_swiftness", uses:50, name:'{"color":"#33EBFF","text":"Strong Swiftness"}', effects:[{id:"minecraft:speed",amplifier:1b,duration:1800}]}
# slowness
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:slowness", uses:50, name:'{"color":"#8BAFE0","text":"Slowness"}', effects:[{id:"minecraft:slowness",amplifier:0b,duration:1800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_slowness", uses:50, name:'{"color":"#8BAFE0","text":"Long Slowness"}', effects:[{id:"minecraft:slowness",amplifier:0b,duration:4800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_slowness", uses:50, name:'{"color":"#8BAFE0","text":"Strong Slowness"}', effects:[{id:"minecraft:slowness",amplifier:3b,duration:400}]}
# strength
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strength", uses:50, name:'{"color":"#FFC700","text":"Strength"}', effects:[{id:"minecraft:strength",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_strength", uses:50, name:'{"color":"#FFC700","text":"Long Strength"}', effects:[{id:"minecraft:strength",amplifier:0b,duration:9600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_strength", uses:50, name:'{"color":"#FFC700","text":"Strong Strength"}', effects:[{id:"minecraft:strength",amplifier:0b,duration:1800}]}
# instant health (healing)
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:healing", uses:50, name:'{"color":"#F82423","text":"Healing"}', effects:[{id:"minecraft:instant_health",amplifier:0b,duration:1,Instant:1b}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_healing", uses:50, name:'{"color":"#F82423","text":"Strong Healing"}', effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1,Instant:1b}]}
# instant damage (harming)
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:harming", uses:50, name:'{"color":"#A9656A","text":"Harming"}', effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:1,Instant:1b}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_harming", uses:50, name:'{"color":"#A9656A","text":"Strong Harming"}', effects:[{id:"minecraft:instant_damage",amplifier:1b,duration:1,Instant:1b}]}
# jump boost (leaping)
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:leaping", uses:50, name:'{"color":"#FDFF84","text":"Leaping"}', effects:[{id:"minecraft:jump_boost",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_leaping", uses:50, name:'{"color":"#FDFF84","text":"Long Leaping"}', effects:[{id:"minecraft:jump_boost",amplifier:0b,duration:9600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_leaping", uses:50, name:'{"color":"#FDFF84","text":"Strong Leaping"}', effects:[{id:"minecraft:jump_boost",amplifier:0b,duration:1800}]}
# regeneration
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:regeneration", uses:50, name:'{"color":"#CD5CAB","text":"Regeneration"}', effects:[{id:"minecraft:regeneration",amplifier:0b,duration:900}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_regeneration", uses:50, name:'{"color":"#CD5CAB","text":"Long Regeneration"}', effects:[{id:"minecraft:regeneration",amplifier:0b,duration:1800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_regeneration", uses:50, name:'{"color":"#CD5CAB","text":"Strong Regeneration"}', effects:[{id:"minecraft:regeneration",amplifier:0b,duration:440}]}
# fire resistance
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:fire_resistance", uses:50, name:'{"color":"#FF9900","text":"Fire Resistance"}', effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_fire_resistance", uses:50, name:'{"color":"#FF9900","text":"Long Fire Resistance"}', effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:9600}]}
# water breathing
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:water_breathing", uses:50, name:'{"color":"#98DAC0","text":"Water Breathing"}', effects:[{id:"minecraft:water_breathing",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_water_breathing", uses:50, name:'{"color":"#98DAC0","text":"Long Water Breathing"}', effects:[{id:"minecraft:water_breathing",amplifier:0b,duration:9600}]}
# invisibility
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:invisibility", uses:50, name:'{"color":"#F6F6F6","text":"Invisibility"}', effects:[{id:"minecraft:invisibility",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_invisibility", uses:50, name:'{"color":"#F6F6F6","text":"Long Invisibility"}', effects:[{id:"minecraft:invisibility",amplifier:0b,duration:9600}]}
# night vision
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:night_vision", uses:50, name:'{"color":"#C2FF66","text":"Night Vision"}', effects:[{id:"minecraft:night_vision",amplifier:0b,duration:3600}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_night_vision", uses:50, name:'{"color":"#C2FF66","text":"Long Night Vision"}', effects:[{id:"minecraft:night_vision",amplifier:0b,duration:9600}]}
# weakness
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:weakness", uses:50, name:'{"color":"#484D48","text":"Weakness"}', effects:[{id:"minecraft:weakness",amplifier:0b,duration:1800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_weakness", uses:50, name:'{"color":"#484D48","text":"Long Weakness"}', effects:[{id:"minecraft:weakness",amplifier:0b,duration:4800}]}
# poison
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:poison", uses:50, name:'{"color":"#87A363","text":"Poison"}', effects:[{id:"minecraft:poison",amplifier:0b,duration:900}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_poison", uses:50, name:'{"color":"#87A363","text":"Long Poison"}', effects:[{id:"minecraft:poison",amplifier:0b,duration:1800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_poison", uses:50, name:'{"color":"#87A363","text":"Strong Poison"}', effects:[{id:"minecraft:poison",amplifier:0b,duration:420}]}
# slow falling
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:slow_falling", uses:50, name:'{"color":"#F3CFB9","text":"Slow Falling"}', effects:[{id:"minecraft:slow_falling",amplifier:0b,duration:1800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_slow_falling", uses:50, name:'{"color":"#F3CFB9","text":"Long Slow Falling"}', effects:[{id:"minecraft:slow_falling",amplifier:0b,duration:4800}]}
# turtle master
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:turtle_master", uses:50, name:'{"color":"#8D85E6","text":"Turtle Master"}', effects:[{id:"minecraft:slowness",amplifier:3b,duration:400},{id:"minecraft:resistance",amplifier:2b,duration:400}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:long_turtle_master", uses:50, name:'{"color":"#8D85E6","text":"Long Turtle Master"}', effects:[{id:"minecraft:slowness",amplifier:3b,duration:800},{id:"minecraft:resistance",amplifier:2b,duration:800}]}
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:strong_turtle_master", uses:50, name:'{"color":"#8D85E6","text":"Strong Turtle Master"}', effects:[{id:"minecraft:slowness",amplifier:5b,duration:400},{id:"minecraft:resistance",amplifier:4b,duration:400}]}
# oozing
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:oozing", uses:50, name:'{"color":"#99FFA3","text":"Oozing"}', effects:[{id:"minecraft:oozing",amplifier:0b,duration:3600}]}
# weaving
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:weaving", uses:50, name:'{"color":"#78695A","text":"Weaving"}', effects:[{id:"minecraft:weaving",amplifier:0b,duration:3600}]}
# infested
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:infested", uses:50, name:'{"color":"#8C9B8C","text":"Infested"}', effects:[{id:"minecraft:infested",amplifier:0b,duration:3600}]}
# wind charged
data modify storage gm4_potion_tipping:config applicable_potions append value {id:"minecraft:wind_charged", uses:50, name:'{"color":"#BDC9FF","text":"Wind Charged"}', effects:[{id:"minecraft:wind_charged",amplifier:0b,duration:3600}]}

# ===== Applicable Potions =====
function #gm4_potion_tipping:api/config
