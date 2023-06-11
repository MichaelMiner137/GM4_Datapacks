execute unless score garden_variety gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Garden Variety"}
scoreboard players set garden_variety gm4_modules 1

# scoreboards and constants
scoreboard objectives add gm4_entity_version dummy
scoreboard objectives add gm4_garden_variety dummy
#scoreboard objectives add gm4_fruit_age dummy
#scoreboard objectives add gm4_fruit_stage dummy
#scoreboard objectives add gm4_apple_data dummy
#scoreboard objectives add gm4_ga_root dummy
#scoreboard objectives add gm4_ga_root_count dummy

#scoreboard players set #8 gm4_apple_data 8
#scoreboard players set #4 gm4_apple_data 4
#scoreboard players set #stage_1_start gm4_apple_data 20
#scoreboard players set #stage_2_start gm4_apple_data 40
#scoreboard players set #stage_0_start gm4_apple_data 60


schedule function gm4_garden_variety:main 10t

#$moduleUpdateList
