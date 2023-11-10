
# reset skip count
scoreboard players set #rotation_calculator.skip_count gm4_gv_component 0

# skip gaps
scoreboard players operation #rotation_calculator.skip_gap.activation gm4_gv_component = #rotation_calculator.rotations_left gm4_gv_component
scoreboard players operation #rotation_calculator.skip_gap.activation gm4_gv_component %= #4 gm4_garden_variety
execute if score #disc_generator.radius gm4_gv_component matches ..3 run scoreboard players set #rotation_calculator.skip_gap.activation gm4_gv_component -1
execute if score #rotation_calculator.skip_gap.activation gm4_gv_component matches 1 run scoreboard players operation #rotation_calculator.skip_count gm4_gv_component += #rotation_calculator.skip_gap.add_factor1 gm4_gv_component
execute if score #rotation_calculator.skip_gap.activation gm4_gv_component matches 2 run scoreboard players operation #rotation_calculator.skip_count gm4_gv_component += #rotation_calculator.skip_gap.add_factor2 gm4_gv_component
execute if score #rotation_calculator.skip_gap.activation gm4_gv_component matches 3 run scoreboard players operation #rotation_calculator.skip_count gm4_gv_component += #rotation_calculator.skip_gap.add_factor1 gm4_gv_component

# get rotations completed
scoreboard players operation #rotation_calculator.rotations_completed gm4_gv_component = #disc_generator.draws gm4_gv_component
scoreboard players operation #rotation_calculator.rotations_completed gm4_gv_component -= #rotation_calculator.rotations_left gm4_gv_component

# skip 1st block after first rotation
execute if score #rotation_calculator.rotations_completed gm4_gv_component matches 1.. unless score #disc_generator.radius gm4_gv_component matches ..1 run scoreboard players add #rotation_calculator.skip_count gm4_gv_component 1

# keep within range
execute if score #rotation_calculator.skip_count gm4_gv_component >= #disc_generator.radius gm4_gv_component run scoreboard players set #rotation_calculator.skip_count gm4_gv_component 0
