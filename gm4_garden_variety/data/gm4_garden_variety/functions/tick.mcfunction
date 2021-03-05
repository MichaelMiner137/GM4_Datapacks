schedule function gm4_garden_variety:tick 1t

### DEV ###
#/give @p bat_spawn_egg{display:{Name:'{"text":"Spawn King Palm Tree","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{Tags:["spawn_tree_king_palm"]}} 1
execute as @e[tag=spawn_tree_king_palm] at @s run function gm4_garden_variety:generate/palm_tree/king_palm/generate
execute as @e[tag=spawn_tree_king_palm] at @s run tp ~ ~-100 ~
execute as @e[tag=spawn_tree_king_palm] at @s run kill @s
#/give @p bat_spawn_egg{display:{Name:'{"text":"Spawn Caranday Palm Tree","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{Tags:["spawn_tree_caranday_palm"]}} 1
execute as @e[tag=spawn_tree_caranday_palm] at @s run function gm4_garden_variety:trees/caranday_palm/generate
execute as @e[tag=spawn_tree_caranday_palm] at @s run tp ~ ~-100 ~
execute as @e[tag=spawn_tree_caranday_palm] at @s run kill @s
#/give @p bat_spawn_egg{display:{Name:'{"text":"Spawn Fox Tail Palm Tree","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{Tags:["spawn_tree_fox_tail_palm"]}} 1
execute as @e[tag=spawn_tree_fox_tail_palm] at @s run function gm4_garden_variety:trees/fox_tail_palm/generate
execute as @e[tag=spawn_tree_fox_tail_palm] at @s run tp ~ ~-100 ~
execute as @e[tag=spawn_tree_fox_tail_palm] at @s run kill @s
#/give @p bat_spawn_egg{display:{Name:'{"text":"Spawn Windmill Palm Tree","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{Tags:["spawn_tree_windmill_palm"]}} 1
execute as @e[tag=spawn_tree_windmill_palm] at @s run function gm4_garden_variety:trees/windmill_palm/generate
execute as @e[tag=spawn_tree_windmill_palm] at @s run tp ~ ~-100 ~
execute as @e[tag=spawn_tree_windmill_palm] at @s run kill @s
#/give @p bat_spawn_egg{display:{Name:'{"text":"Spawn Spindle Palm Tree","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{Tags:["spawn_tree_spindle_palm"]}} 1
execute as @e[tag=spawn_tree_spindle_palm] at @s run function gm4_garden_variety:trees/spindle_palm/generate
execute as @e[tag=spawn_tree_spindle_palm] at @s run tp ~ ~-100 ~
execute as @e[tag=spawn_tree_spindle_palm] at @s run kill @s
#/give @p bat_spawn_egg{display:{Name:'{"text":"Spawn Coconut Palm Tree","italic":false}'},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],EntityTag:{Tags:["spawn_tree_coconut_palm"]}} 1
execute as @e[tag=spawn_tree_coconut_palm] at @s run function gm4_garden_variety:trees/coconut_palm/generate
execute as @e[tag=spawn_tree_coconut_palm] at @s run tp ~ ~-100 ~
execute as @e[tag=spawn_tree_coconut_palm] at @s run kill @s
