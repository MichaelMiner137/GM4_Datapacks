
# debug
particle electric_spark ~ ~ ~4

# direction
execute if score #builder.y_rotation_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/placeholder/pos_dir
execute if score #builder.y_rotation_direction gm4_gv_component matches -1 run function gm4_garden_variety:generation/component/trunk/placeholder/neg_dir
