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
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:2,rounded:true,composite_group:1,pattern:[1,1,2]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:12,max:15},segments:3}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:{min:3,max:5},force_direction:false},y:{value:2,random_direction:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:clearance"
data modify storage gm4_garden_variety:new component.target set value 1
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 1
data modify storage gm4_garden_variety:new component.pointer set value {identifier:2}
data modify storage gm4_garden_variety:new component.absolute set value {x:0,y:0}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:spreader"
data modify storage gm4_garden_variety:new component.target set value 2
data modify storage gm4_garden_variety:new component.primary set value {separation:"alternate"}
data modify storage gm4_garden_variety:new component.layers append value {}
data modify storage gm4_garden_variety:new component.layers[0].offset set value {relative:false,x:0,y:{min:0,max:-10}}
data modify storage gm4_garden_variety:new component.layers[0].pointers set value {identifier:102,amount:8}
data modify storage gm4_garden_variety:new component.layers[0].pointers.offset set value {x:{min:0,max:10},y:{min:0,max:10}}
data modify storage gm4_garden_variety:new component.layers append value {}
data modify storage gm4_garden_variety:new component.layers[1].offset set value {relative:true,x:0,y:{min:-30,max:-40}}
data modify storage gm4_garden_variety:new component.layers[1].pointers set value {identifier:102,amount:8}
data modify storage gm4_garden_variety:new component.layers[1].pointers.offset set value {x:{min:0,max:10},y:{min:0,max:10}}
data modify storage gm4_garden_variety:new component.layers append value {}
data modify storage gm4_garden_variety:new component.layers[2].offset set value {relative:true,x:0,y:{min:-30,max:-40}}
data modify storage gm4_garden_variety:new component.layers[2].pointers set value {identifier:102,amount:8}
data modify storage gm4_garden_variety:new component.layers[2].pointers.offset set value {x:{min:0,max:10},y:{min:0,max:10}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 102
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:3,offset:0}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:2,thickness:1,rounded:true,composite_group:1,pattern:[2]}
data modify storage gm4_garden_variety:new component.length set value {value:8,segments:1}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:{min:1,max:2},force_direction:false},y:{value:{min:2,max:4},random_direction:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# store
data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:new sapling.item
