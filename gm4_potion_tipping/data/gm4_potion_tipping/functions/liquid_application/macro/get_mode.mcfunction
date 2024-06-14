
$data modify storage gm4_potion_tipping:static application_mode set from storage gm4_potion_tipping:config applicable_liquids[{id:"$(liquid_id)"}]

execute if data storage gm4_potion_tipping:macro {liquid_id:"minecraft:potion"} if data storage gm4_potion_tipping:static liquid_item.components."minecraft:potion_contents"{potion:"minecraft:water"} run data modify storage gm4_potion_tipping:static application_mode set from storage gm4_potion_tipping:config applicable_liquids[{id:"gm4_potion_tipping:water"}]
