# checks whether the placed sapling is a custom sapling, and if so allows further execution
# @s raycast AEC
# at @s align xyz
# run from #gm4_fruiting_trees:sapling/initialize

# get traits from held sapling
data modify storage gm4_garden_variety:data/garden_variety_nbt traits set from entity @s SelectedItem.tag.gm4_garden_variety.traits
data modify storage gm4_garden_variety:data/garden_variety_nbt analyzer set from entity @s SelectedItem.tag.gm4_garden_variety.analyzer
function gm4_garden_variety:data/convert/gv_nbt_to_scores

execute if data storage gm4_fruiting_trees:data Sapling{type:"king_palm"} run function gm4_natural_trees:generate/king_palm/fruiting/sapling/initialize

