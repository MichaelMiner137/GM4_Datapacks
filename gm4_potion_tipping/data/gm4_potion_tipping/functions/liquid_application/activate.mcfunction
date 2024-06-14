
advancement revoke @s only gm4_potion_tipping:technical/apply_liquid

execute if score @s gm4_ptip_cooldown matches 1.. run return 0
scoreboard players set @s gm4_ptip_cooldown 5

# get items
data modify storage gm4_potion_tipping:static player set from entity @s
data modify storage gm4_potion_tipping:static weapon_item set from storage gm4_potion_tipping:static player.SelectedItem
data modify storage gm4_potion_tipping:static liquid_item set from storage gm4_potion_tipping:static player.Inventory[{Slot:-106b}]

# get application data
data modify storage gm4_potion_tipping:macro weapon_id set from storage gm4_potion_tipping:static weapon_item.id
function gm4_potion_tipping:liquid_application/macro/get_weapon with storage gm4_potion_tipping:macro
data modify storage gm4_potion_tipping:macro liquid_id set from storage gm4_potion_tipping:static liquid_item.id
function gm4_potion_tipping:liquid_application/macro/get_mode with storage gm4_potion_tipping:macro
data remove storage gm4_potion_tipping:static potion_config
data modify storage gm4_potion_tipping:macro potion_id set from storage gm4_potion_tipping:static liquid_item.components."minecraft:potion_contents".potion
execute if data storage gm4_potion_tipping:static application_mode{action:"apply_potion"} run function gm4_potion_tipping:liquid_application/macro/get_potion with storage gm4_potion_tipping:macro


#tellraw @p {"nbt":"weapon_config","storage":"gm4_potion_tipping:static"}
#tellraw @p {"nbt":"application_mode","storage":"gm4_potion_tipping:static"}
#tellraw @p {"nbt":"potion_config","storage":"gm4_potion_tipping:static"}

# get custom data
data remove storage gm4_potion_tipping:reference potion_tipping_data
data modify storage gm4_potion_tipping:reference potion_tipping_data set from storage gm4_potion_tipping:static weapon_item.components."minecraft:custom_data".gm4_potion_tipping
data remove storage gm4_potion_tipping:reference liquids
data modify storage gm4_potion_tipping:reference liquids set from storage gm4_potion_tipping:reference potion_tipping_data.liquids

# set variables
execute store result score $liquids gm4_potion_tipping run data get storage gm4_potion_tipping:reference liquids
execute store result score $potion_uses gm4_potion_tipping run data get storage gm4_potion_tipping:static potion_config.uses
execute store result score $max_uses gm4_potion_tipping run data get storage gm4_potion_tipping:static weapon_config.max_uses
execute store result score $max_liquids gm4_potion_tipping run data get storage gm4_potion_tipping:static weapon_config.max_liquids

# modify item
execute if score $liquids gm4_potion_tipping < $max_liquids gm4_potion_tipping if data storage gm4_potion_tipping:static application_mode{action:"apply_potion"} run function gm4_potion_tipping:liquid_application/mode/apply
execute if score $liquids gm4_potion_tipping matches 1.. if data storage gm4_potion_tipping:static application_mode{action:"remove_newest"} run function gm4_potion_tipping:liquid_application/mode/remove/newest
execute if score $liquids gm4_potion_tipping matches 1.. if data storage gm4_potion_tipping:static application_mode{action:"remove_oldest"} run function gm4_potion_tipping:liquid_application/mode/remove/oldest
execute if score $liquids gm4_potion_tipping matches 1.. if data storage gm4_potion_tipping:static application_mode{action:"remove_all"} run function gm4_potion_tipping:liquid_application/mode/remove/all

# store custom data
data modify storage gm4_potion_tipping:reference potion_tipping_data.liquids set from storage gm4_potion_tipping:reference liquids
execute unless data storage gm4_potion_tipping:reference liquids[0] run data remove storage gm4_potion_tipping:reference potion_tipping_data.liquids
item modify entity @s weapon.mainhand gm4_potion_tipping:update_weapon

tellraw @p {"color":"aqua","nbt":"potion_tipping_data","storage":"gm4_potion_tipping:reference"}
tellraw @p {"color":"green","nbt":"SelectedItem","entity":"@s"}
