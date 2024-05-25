scoreboard objectives add gm4_flavorful_foods dummy

execute unless score flavorful_foods gm4_modules matches 1 run data modify storage gm4:log queue append value {type:"install",module:"Flavorful Foods"}
scoreboard players set flavorful_foods gm4_modules 1

schedule function gm4_flavorful_foods:main 1t
schedule function gm4_flavorful_foods:tick 1t

#$moduleUpdateList
