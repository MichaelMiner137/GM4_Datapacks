
advancement revoke @s only gm4_potion_tipping:technical/attack

execute if score @s gm4_ptip_cooldown matches 1.. run return 0
scoreboard players set @s gm4_ptip_cooldown 5

# get items
data modify storage gm4_potion_tipping:static player set from entity @s
data modify storage gm4_potion_tipping:static weapon_item set from storage gm4_potion_tipping:static player.SelectedItem

# get application data
data remove storage gm4_potion_tipping:static liquids
data modify storage gm4_potion_tipping:static liquids set from storage gm4_potion_tipping:static weapon_item.components."minecraft:custom_data".gm4_potion_tipping.liquids
execute unless data storage gm4_potion_tipping:static liquids[0] run return 0

# compile effects
data remove storage gm4_potion_tipping:static effects
function gm4_potion_tipping:attack/compile_effects/init

# as mobs
scoreboard players set $mobs_hit gm4_potion_tipping 0
execute positioned ^ ^ ^3 as @e[distance=..3,nbt={HurtTime:10s}] at @s run function gm4_potion_tipping:attack/hit_mob

# apply
execute as @e[type=!player,tag=gm4_ptip_affected] run function gm4_potion_tipping:attack/apply_effects/activate
