# reset
data remove storage gm4_garden_variety:new sapling

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 0
data modify storage gm4_garden_variety:new component.pointer set value {identifier:1}
data modify storage gm4_garden_variety:new component.absolute set value {x:{min:0,max:360},y:-87}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 1
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:2,offset:0}
data modify storage gm4_garden_variety:new component.pointer.fill set value {identifier:101,start:6,stop:999}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:2,rounded:true,composite_group:1,pattern:[1]}
data modify storage gm4_garden_variety:new component.length set value {value:22,segments:3}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:3,direction:"default"},y:{value:0.25,direction:"default"}}
data modify storage gm4_garden_variety:new component.curl set value {x:{value:0.25,direction:"default"},y:{value:0.1,direction:"default"}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 2
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:3,offset:0}
data modify storage gm4_garden_variety:new component.pointer.fill set value {identifier:102,start:0,stop:999}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:1,rounded:true,composite_group:1,pattern:[1]}
data modify storage gm4_garden_variety:new component.length set value {value:8,segments:3}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:3,direction:"default"},y:{value:1,direction:"default"}}
data modify storage gm4_garden_variety:new component.curl set value {x:{value:0.25,direction:"default"},y:{value:0.1,direction:"default"}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component


# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:clearance"
data modify storage gm4_garden_variety:new component.target set value 3
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:disc"
data modify storage gm4_garden_variety:new component.target set value 101
data modify storage gm4_garden_variety:new component.radius set value {length:5,draws:30,source:"pointer/fill",pattern:[3,1,3,1],repeat:-1}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:2,composite_group:2}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:disc"
data modify storage gm4_garden_variety:new component.target set value 102
data modify storage gm4_garden_variety:new component.radius set value {length:1,draws:20,source:"pointer/fill",pattern:[3,1,3,1],repeat:-1}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:2,composite_group:2}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component


# store
data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:new sapling.item
