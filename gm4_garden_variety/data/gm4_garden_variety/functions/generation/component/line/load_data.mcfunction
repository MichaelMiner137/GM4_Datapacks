
##### LOAD SETTINGS #####

# inherit from pointer
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute store result score #line_generator.x_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.x
execute store result score #line_generator.y_rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.rotation.y
execute store result score #active_pointer.bend.x.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.bend.x.direction
execute store result score #active_pointer.bend.y.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.bend.y.direction

# target
execute store result score $target gm4_gv_component run data get storage gm4_garden_variety:reference component.target
execute store result score $pointer.begin.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.identifier
# pointer (begin)
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
execute if data storage gm4_garden_variety:reference component.pointer.random.start.min store result score $pointer.random.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start.min
execute if data storage gm4_garden_variety:reference component.pointer.random.start.max store result score $pointer.random.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start.max
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.min store result score $pointer.random.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.max store result score $pointer.random.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop.max
# placeholder
execute store result score $placeholder.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.identifier
execute store result score $placeholder.thickness gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.thickness
execute store result score $placeholder.quality gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.quality
execute store result score $placeholder.rounded gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.rounded
execute store result score $placeholder.composite_group gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.composite_group
# length
execute store result score $length.value gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value
execute if data storage gm4_garden_variety:reference component.length.value.min store result score $length.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value.min
execute if data storage gm4_garden_variety:reference component.length.value.max store result score $length.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value.max
# bend
execute store result score $bend.x.value gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.value 100
execute store result score $bend.x.force_direction gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.x.force_direction
execute store result score $bend.y.value gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.value 100
execute store result score $bend.y.random_direction gm4_gv_component run data get storage gm4_garden_variety:reference component.bend.y.random_direction
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

### FUTURE MACRO ###
# calculate ranges (combine with the getter)
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset.max run function gm4_garden_variety:generation/component/line/calculate/pointer-begin-value
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset.max run function gm4_garden_variety:generation/component/line/calculate/pointer-middle-value
execute if data storage gm4_garden_variety:reference component.pointer.end.offset.max run function gm4_garden_variety:generation/component/line/calculate/pointer-end-value
execute if data storage gm4_garden_variety:reference component.pointer.fill.start.max run function gm4_garden_variety:generation/component/line/calculate/pointer-fill-start
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop.max run function gm4_garden_variety:generation/component/line/calculate/pointer-fill-stop
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start.max run function gm4_garden_variety:generation/component/line/calculate/pointer-pattern-start
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop.max run function gm4_garden_variety:generation/component/line/calculate/pointer-pattern-stop
execute if data storage gm4_garden_variety:reference component.pointer.random.start.max run function gm4_garden_variety:generation/component/line/calculate/pointer-random-start
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.max run function gm4_garden_variety:generation/component/line/calculate/pointer-random-stop
execute if data storage gm4_garden_variety:reference component.length.value.max run function gm4_garden_variety:generation/component/line/calculate/length-value
execute if data storage gm4_garden_variety:reference component.bend.x.value.max run function gm4_garden_variety:generation/component/line/calculate/x-bend-value
execute if data storage gm4_garden_variety:reference component.curl.x.value.max run function gm4_garden_variety:generation/component/line/calculate/x-curl-value
execute if data storage gm4_garden_variety:reference component.curl.x.start.max run function gm4_garden_variety:generation/component/line/calculate/x-curl-start
execute if data storage gm4_garden_variety:reference component.curl.x.stop.max run function gm4_garden_variety:generation/component/line/calculate/x-curl-stop
execute if data storage gm4_garden_variety:reference component.bend.y.value.max run function gm4_garden_variety:generation/component/line/calculate/y-bend-value
execute if data storage gm4_garden_variety:reference component.curl.y.value.max run function gm4_garden_variety:generation/component/line/calculate/y-curl-value
execute if data storage gm4_garden_variety:reference component.curl.y.start.max run function gm4_garden_variety:generation/component/line/calculate/y-curl-start
execute if data storage gm4_garden_variety:reference component.curl.y.stop.max run function gm4_garden_variety:generation/component/line/calculate/y-curl-stop

# set initial bend direction based on direction mode and pointer inheritance
execute if score $bend.x.force_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calculate/x-bend-force_direction
execute if score $bend.y.random_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calculate/y-bend-random_direction
execute if score $bend.x.force_direction gm4_gv_component matches -1 run function gm4_garden_variety:generation/component/line/calculate/x-bend-random_direction
execute if score $bend.y.random_direction gm4_gv_component matches -1 run function gm4_garden_variety:generation/component/line/calculate/y-bend-force_direction
execute if score $bend.x.force_direction gm4_gv_component matches 0 if score #active_pointer.bend.x.direction gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/calculate/x-bend-random_direction
execute if score $bend.y.random_direction gm4_gv_component matches 0 if score #active_pointer.bend.y.direction gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/calculate/y-bend-force_direction
execute if score $bend.x.force_direction gm4_gv_component matches 0 unless score #active_pointer.bend.x.direction gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/calculate/x-bend-inherit_direction
execute if score $bend.y.random_direction gm4_gv_component matches 0 unless score #active_pointer.bend.y.direction gm4_gv_component matches 0 run function gm4_garden_variety:generation/component/line/calculate/y-bend-inherit_direction



##### WORKING DATA #####

# set segment length
execute unless score $placeholder.quality gm4_gv_component matches 2..6 run scoreboard players set #line_generator.segments_set gm4_gv_component 1
execute if score $placeholder.quality gm4_gv_component matches 2 run scoreboard players set #line_generator.segments_set gm4_gv_component 2
execute if score $placeholder.quality gm4_gv_component matches 3 run scoreboard players set #line_generator.segments_set gm4_gv_component 3
execute if score $placeholder.quality gm4_gv_component matches 4 run scoreboard players set #line_generator.segments_set gm4_gv_component 5
execute if score $placeholder.quality gm4_gv_component matches 5 run scoreboard players set #line_generator.segments_set gm4_gv_component 10
execute if score $placeholder.quality gm4_gv_component matches 6 run scoreboard players set #line_generator.segments_set gm4_gv_component 20

# init pattern in storage for processing
execute if score $placeholder.patterns gm4_gv_component matches 1.. run data modify storage gm4_garden_variety:process placeholder_pattern set from storage gm4_garden_variety:reference component.placeholder.pattern
execute if score $pointer.pattern.identifiers gm4_gv_component matches 1.. run data modify storage gm4_garden_variety:process pointer_pattern set from storage gm4_garden_variety:reference component.pointer.pattern.identifiers
