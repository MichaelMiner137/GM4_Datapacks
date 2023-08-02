
# move forward
execute unless score $placeholder.quality gm4_gv_component matches 2..3 run tp @s ^ ^ ^1 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 2 run tp @s ^ ^ ^0.5 ~ ~
execute if score $placeholder.quality gm4_gv_component matches 3 run tp @s ^ ^ ^0.333 ~ ~
