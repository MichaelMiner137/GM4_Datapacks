execute unless score garden_variety gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Garden Variety"}
scoreboard players set garden_variety gm4_modules 1

# scoreboards
scoreboard objectives add gm4_entity_version dummy
scoreboard objectives add gm4_garden_variety dummy
scoreboard objectives add gm4_gv_generation dummy
scoreboard objectives add gm4_gv_component dummy
scoreboard objectives add gm4_gv_pointer dummy
scoreboard objectives add gm4_gv_placeholder dummy

# constants
scoreboard players set #-1 gm4_garden_variety -1
scoreboard players set #1 gm4_garden_variety 1
scoreboard players set #2 gm4_garden_variety 2
scoreboard players set #10 gm4_garden_variety 10
scoreboard players set #100 gm4_garden_variety 100
scoreboard players set #360 gm4_garden_variety 360
scoreboard players set #10000 gm4_garden_variety 10000
scoreboard players set #100000 gm4_garden_variety 100000
execute store result score #seed gm4_garden_variety run seed
execute if score #seed gm4_garden_variety matches ..0 run scoreboard players operation #seed gm4_garden_variety *= #-1 gm4_garden_variety

# clocks
schedule function gm4_garden_variety:main 10t

#$moduleUpdateList

#