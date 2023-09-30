# reset
data remove storage gm4_garden_variety:new sapling

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 0
data modify storage gm4_garden_variety:new component.pointer set value {identifier:101}
data modify storage gm4_garden_variety:new component.absolute set value {x:{min:0,max:360},y:{min:-90,max:-80}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 101
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:1,offset:0}
data modify storage gm4_garden_variety:new component.pointer.fill set value {identifier:2,start:{min:5,max:7},stop:{min:18,max:23}}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:1,rounded:true,composite_group:1,pattern:[1]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:20,max:23},segments:3}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:20,direction:"default"},y:{value:5,direction:"default"}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:clearance"
data modify storage gm4_garden_variety:new component.target set value 1
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# store
data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:new sapling.item
