# run from TODO



scoreboard players set created_arborist gm4_gv_arborist 0
execute store success score created_arborist gm4_gv_arborist as @e[tag=!gm4_gv_arborist,type=villager,nbt={VillagerData:{profession:"minecraft:none"}},distance=..5,limit=1,sort=nearest] run function gm4_garden_variety:arborist/job/apply
execute if score created_arborist gm4_gv_arborist matches 1 run tag @s add gm4_gv_assigned




