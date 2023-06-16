
# debug
execute unless score $pattern.overriden gm4_gv_component matches 1 run particle dust 0.102 1.000 0.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 1 run particle dust 0.102 1.000 0.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 2 run particle dust 1.000 1.000 0.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 3 run particle dust 1.000 0.667 0.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 4 run particle dust 1.000 0.000 0.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 5 run particle dust 0.000 0.867 1.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 6 run particle dust 0.000 0.102 1.000 1 ~ ~ ~4 0 0 0 1 0 normal
execute if score #builder.current_pattern gm4_gv_component matches 7 run particle dust 0.933 0.000 1.000 1 ~ ~ ~4 0 0 0 1 0 normal
fill ~ ~ ~ ~ ~ ~ oak_wood keep
#execute unless score $pattern.used gm4_gv_component matches 1 run fill ~ ~ ~ ~ ~ ~ brown_stained_glass replace structure_void
#execute if score #builder.current_pattern gm4_gv_component matches 1 run fill ~ ~ ~ ~ ~ ~ yellow_stained_glass replace structure_void
#execute if score #builder.current_pattern gm4_gv_component matches 2 run fill ~ ~ ~ ~ ~ ~ orange_stained_glass replace structure_void
#execute if score #builder.current_pattern gm4_gv_component matches 3 run fill ~ ~ ~ ~ ~ ~ red_stained_glass replace structure_void


# spawn marker and store data


# set block

### STORE ROTATION DIRECTION