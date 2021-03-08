# initializes the TREE_TYPE tree's AEC marker
# @s = raycast AEC
# at @s align xyz
# run from gm4_natural_trees:fruiting/sapling/validate_species

summon area_effect_cloud ~0.5 ~ ~0.5 {Radius:0f,Age:-2147483648,Duration:2147483647,CustomName:'"King Palm Sapling"',Tags:["gm4_fruiting_sapling","gm4_king_palm_sapling"],Particle:"block air"}
scoreboard players set @e[type=area_effect_cloud,tag=gm4_king_palm_sapling,dx=0] gm4_sap_growth 2
