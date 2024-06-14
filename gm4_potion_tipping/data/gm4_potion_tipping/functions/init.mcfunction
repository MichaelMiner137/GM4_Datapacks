scoreboard objectives add gm4_potion_tipping dummy
scoreboard objectives add gm4_ptip_cooldown dummy

function gm4_potion_tipping:config

execute unless score potion_tipping gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Potion Tipping"}
scoreboard players set potion_tipping gm4_modules 1

schedule function gm4_potion_tipping:main 10t
schedule function gm4_potion_tipping:tick 11t



#$moduleUpdateList
