
##### LOAD SETTINGS #####

# reset macro storage
data remove storage gm4_garden_variety:reference component_macro

# inherit from pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute store result score #line_generator.x_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.x
execute store result score #line_generator.y_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.y
execute store result score #active_pointer.bend.x.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.bend.x.direction
execute store result score #active_pointer.bend.y.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.bend.y.direction

# target
execute store result score $target gm4_gv_component run data get storage gm4_garden_variety:reference component.target
# pointer (begin)
execute store result score $pointer.begin.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.identifier
execute store result score $pointer.begin.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.offset
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset.min store result score $pointer.begin.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.offset.min
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset.max store result score $pointer.begin.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.offset.max
# pointer (middle)
execute store result score $pointer.middle.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.identifier
execute store result score $pointer.middle.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.offset
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset.min store result score $pointer.middle.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.offset.min
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset.max store result score $pointer.middle.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.offset.max
# pointer (end)
execute store result score $pointer.end.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.identifier
execute store result score $pointer.end.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.offset
execute if data storage gm4_garden_variety:reference component.pointer.end.offset.min store result score $pointer.end.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.offset.min
execute if data storage gm4_garden_variety:reference component.pointer.end.offset.max store result score $pointer.end.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.offset.max
# pointer (fill)
execute store result score $pointer.fill.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.identifier
execute store result score $pointer.fill.start gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.start
execute store result score $pointer.fill.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.stop
execute if data storage gm4_garden_variety:reference component.pointer.fill.start.min store result score $pointer.fill.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.start.min
execute if data storage gm4_garden_variety:reference component.pointer.fill.start.max store result score $pointer.fill.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.start.max
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop.min store result score $pointer.fill.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop.max store result score $pointer.fill.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.stop.max
# pointer (pattern)
execute store result score $pointer.pattern.start gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.start
execute store result score $pointer.pattern.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.stop
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start.min store result score $pointer.pattern.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.start.min
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start.max store result score $pointer.pattern.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.start.max
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop.min store result score $pointer.pattern.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop.max store result score $pointer.pattern.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.stop.max
# pointer (random)
execute store result score $pointer.random.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.identifier
execute store result score $pointer.random.chance gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.chance
execute store result score $pointer.random.start gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start
execute store result score $pointer.random.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop
execute store result score $pointer.random.maximum gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.maximum
execute if data storage gm4_garden_variety:reference component.pointer.random.start.min store result score $pointer.random.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start.min
execute if data storage gm4_garden_variety:reference component.pointer.random.start.max store result score $pointer.random.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start.max
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.min store result score $pointer.random.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.max store result score $pointer.random.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop.max
# placeholder
execute store result score $placeholder.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.identifier
execute store result score $placeholder.thickness gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.thickness
execute store result score $placeholder.rounded gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.rounded
execute store result score $placeholder.composite_group gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.composite.group
scoreboard players set $placeholder.composite_enabled gm4_gv_component 1
execute if data storage gm4_garden_variety:reference component.placeholder.composite.enabled store result score $placeholder.composite_enabled gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.composite.enabled
execute store result score $placeholder.generation_speed gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.generation_speed

# length
execute store result score $length.value gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value
scoreboard players set $length.segments gm4_gv_component 1
execute if data storage gm4_garden_variety:reference component.length.segments store result score $length.segments gm4_gv_component run data get storage gm4_garden_variety:reference component.length.segments
execute store result score $length.cushion gm4_gv_component run data get storage gm4_garden_variety:reference component.length.cushion
execute if data storage gm4_garden_variety:reference component.length.value.min store result score $length.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value.min
execute if data storage gm4_garden_variety:reference component.length.value.max store result score $length.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value.max
# bend
execute store result score $bend.x.value gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.value 100
execute store result score $bend.x.minimum gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.minimum 100
execute store result score $bend.x.maximum gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.maximum 100
execute store result score $bend.y.value gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.value 100
execute store result score $bend.y.minimum gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.minimum 100
execute store result score $bend.y.maximum gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.maximum 100
execute if data storage gm4_garden_variety:reference component.bend.x.value.min store result score $bend.x.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.value.min 100
execute if data storage gm4_garden_variety:reference component.bend.x.value.max store result score $bend.x.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.value.max 100
execute if data storage gm4_garden_variety:reference component.bend.y.value.min store result score $bend.y.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.value.min 100
execute if data storage gm4_garden_variety:reference component.bend.y.value.max store result score $bend.y.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.value.max 100
# curl
execute store result score $curl.x.value gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.value 100
execute store result score $curl.x.start gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.start
execute store result score $curl.x.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.stop
execute store result score $curl.y.value gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.value 100
execute store result score $curl.y.start gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.start
execute store result score $curl.y.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.stop
execute if data storage gm4_garden_variety:reference component.curl.x.value.min store result score $curl.x.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.value.min 100
execute if data storage gm4_garden_variety:reference component.curl.x.value.max store result score $curl.x.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.value.max 100
execute if data storage gm4_garden_variety:reference component.curl.x.start.min store result score $curl.x.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.start.min
execute if data storage gm4_garden_variety:reference component.curl.x.start.max store result score $curl.x.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.start.max
execute if data storage gm4_garden_variety:reference component.curl.x.stop.min store result score $curl.x.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.stop.min
execute if data storage gm4_garden_variety:reference component.curl.x.stop.max store result score $curl.x.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.x.stop.max
execute if data storage gm4_garden_variety:reference component.curl.y.value.min store result score $curl.y.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.value.min 100
execute if data storage gm4_garden_variety:reference component.curl.y.value.max store result score $curl.y.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.value.max 100
execute if data storage gm4_garden_variety:reference component.curl.y.start.min store result score $curl.y.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.start.min
execute if data storage gm4_garden_variety:reference component.curl.y.start.max store result score $curl.y.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.start.max
execute if data storage gm4_garden_variety:reference component.curl.y.stop.min store result score $curl.y.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.stop.min
execute if data storage gm4_garden_variety:reference component.curl.y.stop.max store result score $curl.y.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.curl.y.stop.max

# flags
execute if data storage gm4_garden_variety:reference component.pointer.pattern.identifiers store result score $pointer.pattern.identifiers gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.identifiers
execute if data storage gm4_garden_variety:reference component.placeholder.pattern store result score $placeholder.patterns gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.pattern



##### INTERPRET SETTINGS #####

# calculate ranges (combine with the getter)
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.begin.value.min gm4_gv_component",input_max:"$pointer.begin.value.max gm4_gv_component",output:"$pointer.begin.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.middle.value.min gm4_gv_component",input_max:"$pointer.middle.value.max gm4_gv_component",output:"$pointer.middle.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.pointer.end.offset.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.end.value.min gm4_gv_component",input_max:"$pointer.end.value.max gm4_gv_component",output:"$pointer.end.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.pointer.fill.start.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.fill.start.min gm4_gv_component",input_max:"$pointer.fill.start.max gm4_gv_component",output:"$pointer.fill.start gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.fill.stop.min gm4_gv_component",input_max:"$pointer.fill.stop.max gm4_gv_component",output:"$pointer.fill.stop gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.pattern.start.min gm4_gv_component",input_max:"$pointer.pattern.start.max gm4_gv_component",output:"$pointer.pattern.start gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$pointer.pattern.stop.min gm4_gv_component",input_max:"$pointer.pattern.stop.max gm4_gv_component",output:"$pointer.pattern.stop gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.length.value.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$length.value.min gm4_gv_component",input_max:"$length.value.max gm4_gv_component",output:"$length.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.x.value.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$bend.x.value.min gm4_gv_component",input_max:"$bend.x.value.max gm4_gv_component",output:"$bend.x.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.curl.x.value.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$curl.x.value.min gm4_gv_component",input_max:"$curl.x.value.max gm4_gv_component",output:"$curl.x.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.curl.x.start.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$curl.x.start.min gm4_gv_component",input_max:"$curl.x.start.max gm4_gv_component",output:"$curl.x.start gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.curl.x.stop.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$curl.x.stop.min gm4_gv_component",input_max:"$curl.x.stop.max gm4_gv_component",output:"$curl.x.stop gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.y.value.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$bend.y.value.min gm4_gv_component",input_max:"$bend.y.value.max gm4_gv_component",output:"$bend.y.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.curl.y.value.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$curl.y.value.min gm4_gv_component",input_max:"$curl.y.value.max gm4_gv_component",output:"$curl.y.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.curl.y.start.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$curl.y.start.min gm4_gv_component",input_max:"$curl.y.start.max gm4_gv_component",output:"$curl.y.start gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.curl.y.stop.max run function gm4_garden_variety:utility/calculate_range/activate {input_min:"$curl.y.stop.min gm4_gv_component",input_max:"$curl.y.stop.max gm4_gv_component",output:"$curl.y.stop gm4_gv_component"}

# set initial bend direction based on direction mode and pointer inheritance
execute unless data storage gm4_garden_variety:reference component.bend.x.direction run data modify storage gm4_garden_variety:reference component.bend.x.direction set value "default"
execute if data storage gm4_garden_variety:reference component.bend.x{direction:"default"} if score #active_pointer.bend.x.direction gm4_gv_component matches 0 run function gm4_garden_variety:utility/calculate_direction/random {input:"#line_generator.x_bend_direction gm4_gv_component",output:"#line_generator.x_bend_direction gm4_gv_component",fix_sign:"$bend.x.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.x{direction:"default"} unless score #active_pointer.bend.x.direction gm4_gv_component matches 0 run function gm4_garden_variety:utility/calculate_direction/set {input:"#active_pointer.bend.x.direction gm4_gv_component",output:"#line_generator.x_bend_direction gm4_gv_component",fix_sign:"$bend.x.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.x{direction:"set"} run function gm4_garden_variety:utility/calculate_direction/set {input:"$bend.x.value gm4_gv_component",output:"#line_generator.x_bend_direction gm4_gv_component",fix_sign:"$bend.x.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.x{direction:"random"} run function gm4_garden_variety:utility/calculate_direction/random {output:"#line_generator.x_bend_direction gm4_gv_component",fix_sign:"$bend.x.value gm4_gv_component"}

execute unless data storage gm4_garden_variety:reference component.bend.y.direction run data modify storage gm4_garden_variety:reference component.bend.y.direction set value "default"
execute if data storage gm4_garden_variety:reference component.bend.y{direction:"default"} if score #active_pointer.bend.y.direction gm4_gv_component matches 0 run function gm4_garden_variety:utility/calculate_direction/set {input:"$bend.y.value gm4_gv_component",output:"#line_generator.y_bend_direction gm4_gv_component",fix_sign:"$bend.y.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.y{direction:"default"} unless score #active_pointer.bend.y.direction gm4_gv_component matches 0 run function gm4_garden_variety:utility/calculate_direction/set {input:"#active_pointer.bend.y.direction gm4_gv_component",output:"#line_generator.y_bend_direction gm4_gv_component",fix_sign:"$bend.y.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.y{direction:"set"} run function gm4_garden_variety:utility/calculate_direction/set {input:"$bend.y.value gm4_gv_component",output:"#line_generator.y_bend_direction gm4_gv_component",fix_sign:"$bend.y.value gm4_gv_component"}
execute if data storage gm4_garden_variety:reference component.bend.y{direction:"random"} run function gm4_garden_variety:utility/calculate_direction/random {output:"#line_generator.y_bend_direction gm4_gv_component",fix_sign:"$bend.y.value gm4_gv_component"}




##### WORKING DATA #####

# [macro] segment attempts
scoreboard players set #line_generator.segment_increment gm4_gv_component 10000
scoreboard players operation #line_generator.segment_increment gm4_gv_component /= $length.segments gm4_gv_component
data remove storage gm4_garden_variety:macro build_segment
execute store result storage gm4_garden_variety:macro build_segment.increment float 0.0001 run scoreboard players get #line_generator.segment_increment gm4_gv_component

# [macro] placeholder thickness
data remove storage gm4_garden_variety:macro place_block
execute if score $placeholder.thickness gm4_gv_component matches 1 run data modify storage gm4_garden_variety:macro place_block.thickness_command set value "execute positioned ^-0.0 ^-0.0 ^ run function gm4_garden_variety:generation/component/line/placeholder/place_block/thickness_1"
execute if score $placeholder.thickness gm4_gv_component matches 2 run data modify storage gm4_garden_variety:macro place_block.thickness_command set value "execute positioned ^-0.5 ^-0.5 ^ run function gm4_garden_variety:generation/component/line/placeholder/place_block/thickness_2"
execute if score $placeholder.thickness gm4_gv_component matches 3 run data modify storage gm4_garden_variety:macro place_block.thickness_command set value "execute positioned ^-1.0 ^-1.0 ^ run function gm4_garden_variety:generation/component/line/placeholder/place_block/thickness_3"
execute if score $placeholder.thickness gm4_gv_component matches 4 run data modify storage gm4_garden_variety:macro place_block.thickness_command set value "execute positioned ^-1.5 ^-1.5 ^ run function gm4_garden_variety:generation/component/line/placeholder/place_block/thickness_4"

# [macro] length cushion
data remove storage gm4_garden_variety:macro build_block
execute store result storage gm4_garden_variety:macro build_block.cushion int 1 run scoreboard players get $length.cushion gm4_gv_component

# [macro] placeholder set block
data remove storage gm4_garden_variety:macro place_placeholder
execute unless score $placeholder.composite_group gm4_gv_component matches 2..6 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "up"
execute if score $placeholder.composite_group gm4_gv_component matches 2 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "down"
execute if score $placeholder.composite_group gm4_gv_component matches 3 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "north"
execute if score $placeholder.composite_group gm4_gv_component matches 4 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "south"
execute if score $placeholder.composite_group gm4_gv_component matches 5 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "east"
execute if score $placeholder.composite_group gm4_gv_component matches 6 run data modify storage gm4_garden_variety:macro place_placeholder.direction set value "west"

# init pattern in storage for processing
execute if score $placeholder.patterns gm4_gv_component matches 1.. run data modify storage gm4_garden_variety:process placeholder_pattern set from storage gm4_garden_variety:reference component.placeholder.pattern
execute if score $pointer.pattern.identifiers gm4_gv_component matches 1.. run data modify storage gm4_garden_variety:process pointer_pattern set from storage gm4_garden_variety:reference component.pointer.pattern.identifiers
