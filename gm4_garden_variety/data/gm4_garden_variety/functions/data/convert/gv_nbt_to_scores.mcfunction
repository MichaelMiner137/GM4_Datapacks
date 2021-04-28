# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO



# tagged
execute if data storage gm4_garden_variety:data/garden_variety_nbt analyzer{tagged:0b} run scoreboard players set tagged gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt analyzer{tagged:1b} run scoreboard players set tagged gm4_gv_nbt_data 2

# enabled
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{enabled:0b} run scoreboard players set enabled gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{enabled:1b} run scoreboard players set enabled gm4_gv_nbt_data 2

# tree height
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"shortest"} run scoreboard players set height gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"shorter"} run scoreboard players set height gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"average"} run scoreboard players set height gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"taller"} run scoreboard players set height gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"tallest"} run scoreboard players set height gm4_gv_nbt_data 5

# tree flexibility
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"stiff"} run scoreboard players set flexibility gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"sturdy"} run scoreboard players set flexibility gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"average"} run scoreboard players set flexibility gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"flexible"} run scoreboard players set flexibility gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"bendy"} run scoreboard players set flexibility gm4_gv_nbt_data 5

# tree foliage
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"smallest"} run scoreboard players set foliage gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"smaller"} run scoreboard players set foliage gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"average"} run scoreboard players set foliage gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"larger"} run scoreboard players set foliage gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"largest"} run scoreboard players set foliage gm4_gv_nbt_data 5

# tree fertility
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"sterile"} run scoreboard players set fertility gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"average"} run scoreboard players set fertility gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"fertile"} run scoreboard players set fertility gm4_gv_nbt_data 4


