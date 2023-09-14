
# forced
execute unless data storage gm4_garden_variety:reference component.length.value run scoreboard players set $length.value gm4_gv_component 8
execute unless data storage gm4_garden_variety:reference component.target run scoreboard players set $length.value gm4_gv_component 0

# pointer (pre)
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer
execute if data storage gm4_garden_variety:reference pointer.x.rotation store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.rotation
execute if data storage gm4_garden_variety:reference pointer.y.rotation store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.rotation

# static
execute if data storage gm4_garden_variety:reference component.target store result score $target gm4_gv_component run data get storage gm4_garden_variety:reference component.target
execute if data storage gm4_garden_variety:reference component.pointer.begin.identifier store result score $pointer.begin.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.identifier
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset store result score $pointer.begin.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.offset
execute if data storage gm4_garden_variety:reference component.pointer.middle.identifier store result score $pointer.middle.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.identifier
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset store result score $pointer.middle.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.offset
execute if data storage gm4_garden_variety:reference component.pointer.end.identifier store result score $pointer.end.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.identifier
execute if data storage gm4_garden_variety:reference component.pointer.end.offset store result score $pointer.end.offset gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.offset
execute if data storage gm4_garden_variety:reference component.pointer.fill.identifier store result score $pointer.fill.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.identifier
execute if data storage gm4_garden_variety:reference component.pointer.fill.start store result score $pointer.fill.start gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.start
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop store result score $pointer.fill.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.stop
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start store result score $pointer.pattern.start gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.start
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop store result score $pointer.pattern.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.stop
execute if data storage gm4_garden_variety:reference component.pointer.random.identifier store result score $pointer.random.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.identifier
execute if data storage gm4_garden_variety:reference component.pointer.random.chance store result score $pointer.random.chance gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.chance
execute if data storage gm4_garden_variety:reference component.pointer.random.start store result score $pointer.random.start gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start
execute if data storage gm4_garden_variety:reference component.pointer.random.stop store result score $pointer.random.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop
execute if data storage gm4_garden_variety:reference component.placeholder.identifier store result score $placeholder.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.identifier
execute if data storage gm4_garden_variety:reference component.placeholder.thickness store result score $placeholder.thickness gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.thickness
execute if data storage gm4_garden_variety:reference component.placeholder.quality store result score $placeholder.quality gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.quality
execute if data storage gm4_garden_variety:reference component.placeholder.rounded store result score $placeholder.rounded gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.rounded
execute if data storage gm4_garden_variety:reference component.placeholder.composite_group store result score $placeholder.composite_group gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.composite_group
execute if data storage gm4_garden_variety:reference component.length.value store result score $length.value gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value
execute if data storage gm4_garden_variety:reference component.x.rotation.value store result score $x.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.value 100
execute if data storage gm4_garden_variety:reference component.x.bend.value store result score $x.bend.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.value 100
execute if data storage gm4_garden_variety:reference component.x.bend.force_direction store result score $x.bend.force_direction gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.force_direction
execute if data storage gm4_garden_variety:reference component.x.curl.value store result score $x.curl.value gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.value 100
execute if data storage gm4_garden_variety:reference component.x.curl.start store result score $x.curl.start gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.start
execute if data storage gm4_garden_variety:reference component.x.curl.stop store result score $x.curl.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.stop
execute if data storage gm4_garden_variety:reference component.y.rotation.value store result score $y.rotation.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.value 100
execute if data storage gm4_garden_variety:reference component.y.bend.value store result score $y.bend.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.value 100
execute if data storage gm4_garden_variety:reference component.y.bend.random_direction store result score $y.bend.random_direction gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.random_direction
execute if data storage gm4_garden_variety:reference component.y.curl.value store result score $y.curl.value gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.value 100
execute if data storage gm4_garden_variety:reference component.y.curl.start store result score $y.curl.start gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.start
execute if data storage gm4_garden_variety:reference component.y.curl.stop store result score $y.curl.stop gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.stop

# dynamic
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset.min store result score $pointer.begin.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.offset.min
execute if data storage gm4_garden_variety:reference component.pointer.begin.offset.max store result score $pointer.begin.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.begin.offset.max
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset.min store result score $pointer.middle.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.offset.min
execute if data storage gm4_garden_variety:reference component.pointer.middle.offset.max store result score $pointer.middle.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.middle.offset.max
execute if data storage gm4_garden_variety:reference component.pointer.end.offset.min store result score $pointer.end.offset.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.offset.min
execute if data storage gm4_garden_variety:reference component.pointer.end.offset.max store result score $pointer.end.offset.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.end.offset.max
execute if data storage gm4_garden_variety:reference component.pointer.fill.start.min store result score $pointer.fill.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.start.min
execute if data storage gm4_garden_variety:reference component.pointer.fill.start.max store result score $pointer.fill.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.start.max
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop.min store result score $pointer.fill.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.fill.stop.max store result score $pointer.fill.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.fill.stop.max
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start.min store result score $pointer.pattern.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.start.min
execute if data storage gm4_garden_variety:reference component.pointer.pattern.start.max store result score $pointer.pattern.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.start.max
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop.min store result score $pointer.pattern.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.pattern.stop.max store result score $pointer.pattern.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.stop.max
execute if data storage gm4_garden_variety:reference component.pointer.random.start.min store result score $pointer.random.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start.min
execute if data storage gm4_garden_variety:reference component.pointer.random.start.max store result score $pointer.random.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.start.max
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.min store result score $pointer.random.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop.min
execute if data storage gm4_garden_variety:reference component.pointer.random.stop.max store result score $pointer.random.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.random.stop.max
execute if data storage gm4_garden_variety:reference component.length.value.min store result score $length.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value.min
execute if data storage gm4_garden_variety:reference component.length.value.max store result score $length.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.length.value.max
execute if data storage gm4_garden_variety:reference component.x.rotation.value.min store result score $x.rotation.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.value.min 100
execute if data storage gm4_garden_variety:reference component.x.rotation.value.max store result score $x.rotation.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.rotation.value.max 100
execute if data storage gm4_garden_variety:reference component.x.bend.value.min store result score $x.bend.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.value.min 100
execute if data storage gm4_garden_variety:reference component.x.bend.value.max store result score $x.bend.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.bend.value.max 100
execute if data storage gm4_garden_variety:reference component.x.curl.value.min store result score $x.curl.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.value.min 100
execute if data storage gm4_garden_variety:reference component.x.curl.value.max store result score $x.curl.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.value.max 100
execute if data storage gm4_garden_variety:reference component.x.curl.start.min store result score $x.curl.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.start.min
execute if data storage gm4_garden_variety:reference component.x.curl.start.max store result score $x.curl.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.start.max
execute if data storage gm4_garden_variety:reference component.x.curl.stop.min store result score $x.curl.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.stop.min
execute if data storage gm4_garden_variety:reference component.x.curl.stop.max store result score $x.curl.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.x.curl.stop.max
execute if data storage gm4_garden_variety:reference component.y.rotation.value.min store result score $y.rotation.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.value.min 100
execute if data storage gm4_garden_variety:reference component.y.rotation.value.max store result score $y.rotation.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.rotation.value.max 100
execute if data storage gm4_garden_variety:reference component.y.bend.value.min store result score $y.bend.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.value.min 100
execute if data storage gm4_garden_variety:reference component.y.bend.value.max store result score $y.bend.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.bend.value.max 100
execute if data storage gm4_garden_variety:reference component.y.curl.value.min store result score $y.curl.value.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.value.min 100
execute if data storage gm4_garden_variety:reference component.y.curl.value.max store result score $y.curl.value.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.value.max 100
execute if data storage gm4_garden_variety:reference component.y.curl.start.min store result score $y.curl.start.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.start.min
execute if data storage gm4_garden_variety:reference component.y.curl.start.max store result score $y.curl.start.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.start.max
execute if data storage gm4_garden_variety:reference component.y.curl.stop.min store result score $y.curl.stop.min gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.stop.min
execute if data storage gm4_garden_variety:reference component.y.curl.stop.max store result score $y.curl.stop.max gm4_gv_component run data get storage gm4_garden_variety:reference component.y.curl.stop.max

# flag counters
execute if data storage gm4_garden_variety:reference component.pointer.pattern.identifiers store result score $pointer.pattern.identifiers gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.pattern.identifiers
execute if data storage gm4_garden_variety:reference component.placeholder.pattern store result score $placeholder.patterns gm4_gv_component run data get storage gm4_garden_variety:reference component.placeholder.pattern

# calculate ranges
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
execute if data storage gm4_garden_variety:reference component.x.rotation.value.max run function gm4_garden_variety:generation/component/line/calculate/x-rotation-value
execute if data storage gm4_garden_variety:reference component.x.bend.value.max run function gm4_garden_variety:generation/component/line/calculate/x-bend-value
execute if data storage gm4_garden_variety:reference component.x.curl.value.max run function gm4_garden_variety:generation/component/line/calculate/x-curl-value
execute if data storage gm4_garden_variety:reference component.x.curl.start.max run function gm4_garden_variety:generation/component/line/calculate/x-curl-start
execute if data storage gm4_garden_variety:reference component.x.curl.stop.max run function gm4_garden_variety:generation/component/line/calculate/x-curl-stop
execute if data storage gm4_garden_variety:reference component.y.rotation.value.max run function gm4_garden_variety:generation/component/line/calculate/y-rotation-value
execute if data storage gm4_garden_variety:reference component.y.bend.value.max run function gm4_garden_variety:generation/component/line/calculate/y-bend-value
execute if data storage gm4_garden_variety:reference component.y.curl.value.max run function gm4_garden_variety:generation/component/line/calculate/y-curl-value
execute if data storage gm4_garden_variety:reference component.y.curl.start.max run function gm4_garden_variety:generation/component/line/calculate/y-curl-start
execute if data storage gm4_garden_variety:reference component.y.curl.stop.max run function gm4_garden_variety:generation/component/line/calculate/y-curl-stop

#tellraw @p {"nbt":"component.pointer.random.start","storage":"gm4_garden_variety:reference"}
#tellraw @p {"score":{"name":"$pointer.random.start","objective":"gm4_gv_component"}}
#tellraw @p {"nbt":"component.pointer.random.stop","storage":"gm4_garden_variety:reference"}
#tellraw @p {"score":{"name":"$pointer.random.stop","objective":"gm4_gv_component"}}

# bend direction
execute if score $x.bend.force_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/correction/x-bend-force_direction
execute unless score $x.bend.force_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/correction/x-bend-random_direction
execute if score $y.bend.random_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/correction/y-bend-random_direction
execute unless score $y.bend.random_direction gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/correction/y-bend-force_direction

# pointer (override)
#execute if data storage gm4_garden_variety:reference pointer.x.bend.direction store result score $x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.bend.direction
#execute if data storage gm4_garden_variety:reference pointer.y.bend.direction store result score $y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.bend.direction

# debug
#tellraw @p [{"nbt":"component.type","storage":"gm4_garden_variety:temp"}]
#tellraw @p ["X___:   V: ",{"score":{"name":"$y.rotation.value","objective":"gm4_gv_component"}},", MN: ",{"score":{"name":"$y.rotation.min","objective":"gm4_gv_component"}},", MX: ",{"score":{"name":"$y.rotation.max","objective":"gm4_gv_component"}}]
#tellraw @p ["X___:   x: ",{"score":{"name":"$x.bend.direction","objective":"gm4_gv_component"}},", y: ",{"score":{"name":"$x.bend.direction","objective":"gm4_gv_component"}},", ?: ",{"score":{"name":"","objective":"gm4_gv_component"}}]
