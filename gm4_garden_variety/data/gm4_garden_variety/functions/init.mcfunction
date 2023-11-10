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
scoreboard players set #0 gm4_garden_variety 0
scoreboard players set #1 gm4_garden_variety 1
scoreboard players set #2 gm4_garden_variety 2
scoreboard players set #3 gm4_garden_variety 3
scoreboard players set #4 gm4_garden_variety 4
scoreboard players set #5 gm4_garden_variety 5
scoreboard players set #6 gm4_garden_variety 6
scoreboard players set #7 gm4_garden_variety 7
scoreboard players set #8 gm4_garden_variety 8
scoreboard players set #9 gm4_garden_variety 9
scoreboard players set #10 gm4_garden_variety 10
scoreboard players set #16 gm4_garden_variety 16
scoreboard players set #20 gm4_garden_variety 20
scoreboard players set #100 gm4_garden_variety 100
scoreboard players set #360 gm4_garden_variety 360
scoreboard players set #9000 gm4_garden_variety 9000
scoreboard players set #10000 gm4_garden_variety 10000
scoreboard players set #36000 gm4_garden_variety 36000
scoreboard players set #100000 gm4_garden_variety 100000
execute store result score #seed gm4_garden_variety run seed
execute if score #seed gm4_garden_variety matches ..0 run scoreboard players operation #seed gm4_garden_variety *= #-1 gm4_garden_variety

# clocks
schedule function gm4_garden_variety:main 10t

#$moduleUpdateList
