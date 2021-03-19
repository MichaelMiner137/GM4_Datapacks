# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO



# analyzed
execute if score analyzed gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety analyzer.analyzed set value 0b
execute if score analyzed gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety analyzer.analyzed set value 1b

# tagged
execute if score tagged gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety analyzer.tagged set value 0b
execute if score tagged gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety analyzer.tagged set value 1b

# enabled
execute if score enabled gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.enabled set value 0b
execute if score enabled gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.enabled set value 1b

# tree height
execute if score height gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.height set value "shortest"
execute if score height gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.height set value "shorter"
execute if score height gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.height set value "average"
execute if score height gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.height set value "taller"
execute if score height gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.height set value "tallest"

# tree flexibility
execute if score flexibility gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.flexibility set value "stiff"
execute if score flexibility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.flexibility set value "sturdy"
execute if score flexibility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.flexibility set value "average"
execute if score flexibility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.flexibility set value "flexible"
execute if score flexibility gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.flexibility set value "bendy"

# tree foliage
execute if score foliage gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.foliage set value "smallest"
execute if score foliage gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.foliage set value "smaller"
execute if score foliage gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.foliage set value "average"
execute if score foliage gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.foliage set value "larger"
execute if score foliage gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.foliage set value "largest"

# tree fertility
execute if score fertility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.fertility set value "sterile"
execute if score fertility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.fertility set value "average"
execute if score fertility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/scoreboard/garden_variety traits.fertility set value "fertile"

# copy score into nbt
data modify entity @s Item.tag.gm4_garden_variety set from storage gm4_garden_variety:data/scoreboard/garden_variety
