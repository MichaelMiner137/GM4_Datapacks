# checks whether the placed sapling is a custom sapling, and if so allows further execution
# @s raycast AEC
# at @s align xyz
# run from #gm4_fruiting_trees:sapling/initialize

# get traits from held sapling
data modify storage gm4_garden_variety:data/item/garden_variety Traits set from entity @s SelectedItem.tag.gm4_garden_variety.traits
data modify storage gm4_garden_variety:data/item/garden_variety Analyzer set from entity @s SelectedItem.tag.gm4_garden_variety.analyzer
function gm4_garden_variety:storage_data/get/garden_variety_nbt

execute if data storage gm4_fruiting_trees:data Sapling{type:"king_palm"} run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/sapling/initialize

