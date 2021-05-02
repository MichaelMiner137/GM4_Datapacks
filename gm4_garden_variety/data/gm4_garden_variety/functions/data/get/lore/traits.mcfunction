# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:analyzer/recipes/RECIPE_TYPE/complete

# reset storage
data remove storage gm4_garden_variety:data/trait_lore Lore

# TAG: height
execute if score height gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Shortest","color":"red","italic":false}]'
execute if score height gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Shorter","color":"red","italic":false}]'
execute if score height gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Short","color":"red","italic":false}]'
execute if score height gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Average","color":"blue","italic":false}]'
execute if score height gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Tall","color":"green","italic":false}]'
execute if score height gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Taller","color":"green","italic":false}]'
execute if score height gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Height: ","color":"gray","italic":false},{"text":"Tallest","color":"green","italic":false}]'
# TAG: flexibility
execute if score flexibility gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Lowest","color":"red","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Lower","color":"red","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Low","color":"red","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Average","color":"blue","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"High","color":"green","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Higher","color":"green","italic":false}]'
execute if score flexibility gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Flexibility: ","color":"gray","italic":false},{"text":"Highest","color":"green","italic":false}]'
# TAG: foliage
execute if score foliage gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Smallest","color":"red","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Smaller","color":"red","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Small","color":"red","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Average","color":"blue","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Large","color":"green","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Larger","color":"green","italic":false}]'
execute if score foliage gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Foliage: ","color":"gray","italic":false},{"text":"Largest","color":"green","italic":false}]'
# TAG: fertility
execute if score fertility gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Lowest","color":"red","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Lower","color":"red","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Low","color":"red","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Average","color":"blue","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"High","color":"green","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Higher","color":"green","italic":false}]'
execute if score fertility gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Fertility: ","color":"gray","italic":false},{"text":"Highest","color":"green","italic":false}]'
# TAG: fertility
execute if score abnormality gm4_gv_nbt_data matches 1 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"None","color":"blue","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 2 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Poisonous","color":"dark_purple","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 3 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Smelly","color":"dark_green","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 4 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Acidic","color":"green","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 5 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Tough","color":"dark_gray","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 6 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Sterile","color":"yellow","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 7 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Fruiting","color":"red","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 8 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Snowy","color":"white","italic":false}]'
execute if score abnormality gm4_gv_nbt_data matches 9 run data modify storage gm4_garden_variety:data/trait_lore Lore append value '[{"text":"Abnormality: ","color":"gray","italic":false},{"text":"Necrotic","color":"#372959","italic":false}]'
