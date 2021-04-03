# run from TODO



scoreboard players set nearby_arborist gm4_gv_arborist 0
scoreboard players set nearby_assigned_analyzers gm4_gv_arborist 0
execute as @e[type=armor_stand,tag=gm4_gv_analyzer,distance=..5,tag=gm4_gv_assigned,tag=!gm4_gv_cancel_job] at @s run scoreboard players add nearby_assigned_analyzers gm4_gv_arborist 1
execute as @e[type=villager,tag=gm4_gv_arborist,distance=..10] at @s run scoreboard players add nearby_arborist gm4_gv_arborist 1

scoreboard players operation need_arborist gm4_gv_arborist = nearby_assigned_analyzers gm4_gv_arborist
scoreboard players operation need_arborist gm4_gv_arborist *= #2 gm4_gv_math_num
scoreboard players operation need_arborist gm4_gv_arborist -= nearby_arborist gm4_gv_arborist


execute if score need_arborist gm4_gv_arborist matches 1.. run tag @s remove gm4_gv_assigned




