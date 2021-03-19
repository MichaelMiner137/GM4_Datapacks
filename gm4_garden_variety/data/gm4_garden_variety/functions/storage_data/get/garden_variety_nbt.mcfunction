# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO



# analyzed
execute if data storage gm4_garden_variety:data/item/garden_variety Analyzer{analyzed:0b} run scoreboard players set analyzed gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/item/garden_variety Analyzer{analyzed:1b} run scoreboard players set analyzed gm4_gv_nbt_data 2

# tagged
execute if data storage gm4_garden_variety:data/item/garden_variety Analyzer{tagged:0b} run scoreboard players set tagged gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/item/garden_variety Analyzer{tagged:1b} run scoreboard players set tagged gm4_gv_nbt_data 2

# enabled
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{enabled:0b} run scoreboard players set enabled gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{enabled:1b} run scoreboard players set enabled gm4_gv_nbt_data 2

# tree height
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{height:"shortest"} run scoreboard players set height gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{height:"shorter"} run scoreboard players set height gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{height:"average"} run scoreboard players set height gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{height:"taller"} run scoreboard players set height gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{height:"tallest"} run scoreboard players set height gm4_gv_nbt_data 5

# tree flexibility
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{flexibility:"stiff"} run scoreboard players set flexibility gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{flexibility:"sturdy"} run scoreboard players set flexibility gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{flexibility:"average"} run scoreboard players set flexibility gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{flexibility:"flexible"} run scoreboard players set flexibility gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{flexibility:"bendy"} run scoreboard players set flexibility gm4_gv_nbt_data 5

# tree foliage
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{foliage:"smallest"} run scoreboard players set foliage gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{foliage:"smaller"} run scoreboard players set foliage gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{foliage:"average"} run scoreboard players set foliage gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{foliage:"larger"} run scoreboard players set foliage gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{foliage:"largest"} run scoreboard players set foliage gm4_gv_nbt_data 5

# tree fertility
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{fertility:"sterile"} run scoreboard players set fertility gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{fertility:"average"} run scoreboard players set fertility gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/item/garden_variety Traits{fertility:"fertile"} run scoreboard players set fertility gm4_gv_nbt_data 4


