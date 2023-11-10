
# ray
scoreboard players operation #disc_generator.length_left gm4_gv_component = #disc_generator.radius gm4_gv_component
scoreboard players operation #disc_generator.length_left gm4_gv_component -= #rotation_calculator.skip_count gm4_gv_component
$execute at @s facing ^$(x) ^$(z) ^ positioned ^ ^ ^$(skip) run function gm4_garden_variety:generation/component/disc/loop_ray
