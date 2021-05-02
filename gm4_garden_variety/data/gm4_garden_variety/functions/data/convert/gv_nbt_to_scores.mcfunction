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
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"short"} run scoreboard players set height gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"average"} run scoreboard players set height gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"tall"} run scoreboard players set height gm4_gv_nbt_data 5
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"taller"} run scoreboard players set height gm4_gv_nbt_data 6
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{height:"tallest"} run scoreboard players set height gm4_gv_nbt_data 7

# tree flexibility
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"lowest"} run scoreboard players set flexibility gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"lower"} run scoreboard players set flexibility gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"low"} run scoreboard players set flexibility gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"average"} run scoreboard players set flexibility gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"high"} run scoreboard players set flexibility gm4_gv_nbt_data 5
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"higher"} run scoreboard players set flexibility gm4_gv_nbt_data 6
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{flexibility:"highest"} run scoreboard players set flexibility gm4_gv_nbt_data 7

# tree foliage
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"smallest"} run scoreboard players set foliage gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"smaller"} run scoreboard players set foliage gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"small"} run scoreboard players set foliage gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"average"} run scoreboard players set foliage gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"large"} run scoreboard players set foliage gm4_gv_nbt_data 5
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"larger"} run scoreboard players set foliage gm4_gv_nbt_data 6
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{foliage:"largest"} run scoreboard players set foliage gm4_gv_nbt_data 7

# tree fertility
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"lowest"} run scoreboard players set fertility gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"lower"} run scoreboard players set fertility gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"low"} run scoreboard players set fertility gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"average"} run scoreboard players set fertility gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"high"} run scoreboard players set fertility gm4_gv_nbt_data 5
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"higher"} run scoreboard players set fertility gm4_gv_nbt_data 6
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{fertility:"highest"} run scoreboard players set fertility gm4_gv_nbt_data 7

# tree abnormality
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"none"} run scoreboard players set abnormality gm4_gv_nbt_data 1
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"poisonous"} run scoreboard players set abnormality gm4_gv_nbt_data 2
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"smelly"} run scoreboard players set abnormality gm4_gv_nbt_data 3
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"acidic"} run scoreboard players set abnormality gm4_gv_nbt_data 4
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"tough"} run scoreboard players set abnormality gm4_gv_nbt_data 5
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"sterile"} run scoreboard players set abnormality gm4_gv_nbt_data 6
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"fruiting"} run scoreboard players set abnormality gm4_gv_nbt_data 7
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"snowy"} run scoreboard players set abnormality gm4_gv_nbt_data 8
execute if data storage gm4_garden_variety:data/garden_variety_nbt traits{abnormality:"necrotic"} run scoreboard players set abnormality gm4_gv_nbt_data 9
