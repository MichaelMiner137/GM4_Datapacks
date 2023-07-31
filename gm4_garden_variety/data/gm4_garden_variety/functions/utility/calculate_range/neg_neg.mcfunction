
# min: -8,   max: -2,   range: 7

# range
scoreboard players operation #range gm4_garden_variety = #input_min gm4_garden_variety
scoreboard players operation #range gm4_garden_variety *= #-1 gm4_garden_variety
scoreboard players operation #range gm4_garden_variety += #input_max gm4_garden_variety
scoreboard players add #range gm4_garden_variety 1

# offset
scoreboard players operation #offset gm4_garden_variety = #input_min gm4_garden_variety
