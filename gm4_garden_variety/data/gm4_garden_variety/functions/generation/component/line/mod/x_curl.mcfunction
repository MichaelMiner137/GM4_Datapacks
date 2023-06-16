
scoreboard players operation #builder.y_curl_ac gm4_gv_component = #builder.length.current gm4_gv_component
scoreboard players operation #builder.y_curl_ac gm4_gv_component %= $x.curl.frequency gm4_gv_component
execute if score $x.curl.start gm4_gv_component matches 1.. if score #builder.length.current gm4_gv_component < $x.curl.start gm4_gv_component run scoreboard players set #builder.y_curl_ac gm4_gv_component -1
execute if score $x.curl.stop gm4_gv_component matches 1.. if score #builder.length.current gm4_gv_component > $x.curl.stop gm4_gv_component run scoreboard players set #builder.y_curl_ac gm4_gv_component -1
execute if score #builder.y_curl_ac gm4_gv_component matches 0 unless score $x.curl.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/x_curl
execute if score #builder.y_curl_ac gm4_gv_component matches 0 if score $x.curl.static gm4_gv_component matches 1 run scoreboard players operation $x.bend.value gm4_gv_component += $x.curl.value gm4_gv_component
execute if score #builder.y_curl_ac gm4_gv_component matches 0 unless score $x.curl.static gm4_gv_component matches 1 run scoreboard players operation $x.bend.min gm4_gv_component += $x.curl.value gm4_gv_component
execute if score #builder.y_curl_ac gm4_gv_component matches 0 unless score $x.curl.static gm4_gv_component matches 1 run scoreboard players operation $x.bend.max gm4_gv_component += $x.curl.value gm4_gv_component
