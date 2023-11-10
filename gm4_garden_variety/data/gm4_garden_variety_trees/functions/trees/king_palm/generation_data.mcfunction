# reset
data remove storage gm4_garden_variety:new sapling

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 0
data modify storage gm4_garden_variety:new component.pointer set value {identifier:1}
data modify storage gm4_garden_variety:new component.absolute set value {x:{min:0,max:360},y:-90}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 1
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:2,offset:0}
data modify storage gm4_garden_variety:new component.pointer.fill set value {identifier:101,start:6,stop:999}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:3,rounded:false,composite:{group:1,enabled:false},pattern:[1],generation_speed:1}
data modify storage gm4_garden_variety:new component.length set value {value:22,segments:1}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:1,direction:"default"},y:{value:1,direction:"default"}}
data modify storage gm4_garden_variety:new component.curl set value {x:{value:0.1,direction:"default"},y:{value:0,direction:"default"}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 2
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:3,offset:0}
data modify storage gm4_garden_variety:new component.pointer.fill set value {identifier:102,start:1,stop:999}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:1,rounded:true,composite:{group:1,enabled:false},pattern:[1],generation_speed:1}
data modify storage gm4_garden_variety:new component.length set value {value:10,segments:1}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:1,direction:"default"},y:{value:1,direction:"default"}}
data modify storage gm4_garden_variety:new component.curl set value {x:{value:0.1,direction:"default"},y:{value:0,direction:"default"}}
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
data modify storage gm4_garden_variety:new component.general set value {rotation:"horizontal",length:{initial:7,decrease:4,increase:0,minimum:1},draws:0}
data modify storage gm4_garden_variety:new component.pattern set value {source:"pointer/fill",list:[2,0,1,0]}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:2,composite:{group:2},generation_speed:99999}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:disc"
data modify storage gm4_garden_variety:new component.target set value 102
data modify storage gm4_garden_variety:new component.general set value {rotation:"horizontal",length:{initial:3,decrease:3,increase:0,minimum:1},draws:0}
data modify storage gm4_garden_variety:new component.pattern set value {source:"pointer/fill",list:[1,0]}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:2,composite:{group:2},generation_speed:99999}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component


# store
data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:new sapling.item
