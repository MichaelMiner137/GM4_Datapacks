
scoreboard players operation #builder.y_curl_ac gm4_gv_component = #builder.current_length gm4_gv_component
scoreboard players operation #builder.y_curl_ac gm4_gv_component %= $y.curl.freq gm4_gv_component
execute if score $y.curl.start gm4_gv_component matches 1.. if score #builder.current_length gm4_gv_component < $y.curl.start gm4_gv_component run scoreboard players set #builder.y_curl_ac gm4_gv_component -1
execute if score $y.curl.stop gm4_gv_component matches 1.. if score #builder.current_length gm4_gv_component > $y.curl.stop gm4_gv_component run scoreboard players set #builder.y_curl_ac gm4_gv_component -1
execute if score #builder.y_curl_ac gm4_gv_component matches 0 unless score $y.curl.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/y_curl
execute if score #builder.y_curl_ac gm4_gv_component matches 0 if score $y.curl.static gm4_gv_component matches 1 run scoreboard players operation $y.bend.value gm4_gv_component += $y.curl.value gm4_gv_component
execute if score #builder.y_curl_ac gm4_gv_component matches 0 unless score $y.curl.static gm4_gv_component matches 1 run scoreboard players operation $y.bend.min gm4_gv_component += $y.curl.value gm4_gv_component
execute if score #builder.y_curl_ac gm4_gv_component matches 0 unless score $y.curl.static gm4_gv_component matches 1 run scoreboard players operation $y.bend.max gm4_gv_component += $y.curl.value gm4_gv_component
