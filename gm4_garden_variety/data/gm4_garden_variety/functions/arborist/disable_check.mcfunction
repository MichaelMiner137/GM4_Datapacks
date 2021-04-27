# run from TODO

# disable updates
execute if entity @s[tag=!gm4_gv_disable_updates] unless entity @a[distance=..15] run data modify entity @s NoAI set value 1b
execute if entity @s[tag=!gm4_gv_disable_updates] unless entity @a[distance=..15] run tag @s add gm4_gv_disable_updates
execute if entity @s[tag=gm4_gv_disable_updates] if entity @a[distance=..15] run data modify entity @s NoAI set value 0b
execute if entity @s[tag=gm4_gv_disable_updates] if entity @a[distance=..15] run tag @s remove gm4_gv_disable_updates
