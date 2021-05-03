# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/update

# add scanning tag
tag @s add gm4_gv_analyzing

# increase timer
scoreboard players add @s gm4_gv_analyze 1

# audio
playsound minecraft:entity.villager.work_cartographer block @a[distance=..20]



