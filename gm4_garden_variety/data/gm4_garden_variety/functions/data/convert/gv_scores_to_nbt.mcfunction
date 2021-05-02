# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO



# tagged
execute if score tagged gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt analyzer.tagged set value 0b
execute if score tagged gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt analyzer.tagged set value 1b

# enabled
execute if score enabled gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.enabled set value 0b
execute if score enabled gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.enabled set value 1b

# tree height
execute if score height gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "shortest"
execute if score height gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "shorter"
execute if score height gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "short"
execute if score height gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "average"
execute if score height gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "tall"
execute if score height gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "taller"
execute if score height gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.height set value "tallest"

# tree flexibility
execute if score flexibility gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "lowest"
execute if score flexibility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "lower"
execute if score flexibility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "low"
execute if score flexibility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "average"
execute if score flexibility gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "high"
execute if score flexibility gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "higher"
execute if score flexibility gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.flexibility set value "highest"

# tree foliage
execute if score foliage gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "smallest"
execute if score foliage gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "smaller"
execute if score foliage gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "small"
execute if score foliage gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "average"
execute if score foliage gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "large"
execute if score foliage gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "larger"
execute if score foliage gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.foliage set value "largest"

# tree fertility
execute if score fertility gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "lowest"
execute if score fertility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "lower"
execute if score fertility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "low"
execute if score fertility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "average"
execute if score fertility gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "high"
execute if score fertility gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "higher"
execute if score fertility gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.fertility set value "highest"

# tree abnormality
execute if score abnormality gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "none"
execute if score abnormality gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "poisonous"
execute if score abnormality gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "smelly"
execute if score abnormality gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "acidic"
execute if score abnormality gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "tough"
execute if score abnormality gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "sterile"
execute if score abnormality gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "fruiting"
execute if score abnormality gm4_gv_nbt_data matches 8 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "snowy"
execute if score abnormality gm4_gv_nbt_data matches 9 run data modify storage gm4_garden_variety:data/garden_variety_nbt traits.abnormality set value "necrotic"

# copy score into nbt
data modify entity @s Item.tag.gm4_garden_variety set from storage gm4_garden_variety:data/garden_variety_nbt
