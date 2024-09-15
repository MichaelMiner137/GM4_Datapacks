scoreboard objectives add gm4_garden_variety dummy

execute unless score garden_variety gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Garden Variety"}
execute unless score garden_variety gm4_earliest_version < garden_variety gm4_modules run scoreboard players operation garden_variety gm4_earliest_version = garden_variety gm4_modules
scoreboard players set garden_variety gm4_modules 1

schedule function gm4_garden_variety:main 1t

#$moduleUpdateList
