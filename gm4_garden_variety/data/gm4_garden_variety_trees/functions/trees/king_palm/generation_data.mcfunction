# reset
data remove storage gm4_garden_variety:new sapling

# component 0
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 0
data modify storage gm4_garden_variety:new component.pointer set value {identifier:101}
data modify storage gm4_garden_variety:new component.absolute set value {x:{min:0,max:360},y:{min:-90,max:-85}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 1
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 101
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:102,offset:0}
data modify storage gm4_garden_variety:new component.pointer.pattern set value {identifiers:[-1,-1,-1,-1,2],start:1,stop:999}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:4,quality:3,rounded:true,composite_group:1,pattern:[1]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:18,max:22}}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:5,force_direction:false},y:{value:0.25,random_direction:false}}
data modify storage gm4_garden_variety:new component.curl set value {x:{value:0,start:1,stop:999},y:{value:0.1,start:1,stop:999}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 2
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 2
data modify storage gm4_garden_variety:new component.pointer set value {identifier:102}
data modify storage gm4_garden_variety:new component.relative set value {x:{offset:90,direction:"pointer/pattern"},y:{offset:{min:30,max:50},direction:"forced"}}
data modify storage gm4_garden_variety:new component.diverge set value {x:false,y:false}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 3
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 102
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:3,offset:0}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:3,quality:3,rounded:true,composite_group:1,pattern:[1,1,2]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:8,max:10}}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:5,force_direction:false},y:{value:0.5,random_direction:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 4
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 3
data modify storage gm4_garden_variety:new component.pointer set value {identifier:103}
data modify storage gm4_garden_variety:new component.relative set value {x:{offset:{min:30,max:70},direction:"forced"},y:{offset:0,direction:"forced"}}
data modify storage gm4_garden_variety:new component.diverge set value {x:true,y:false}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 5
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 3
data modify storage gm4_garden_variety:new component.pointer set value {identifier:103}
data modify storage gm4_garden_variety:new component.relative set value {x:{offset:{min:-70,max:-30},direction:"forced"},y:{offset:0,direction:"forced"}}
data modify storage gm4_garden_variety:new component.diverge set value {x:false,y:false}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 6
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 103
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:4,offset:0}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:2,quality:3,rounded:true,composite_group:1,pattern:[1,2]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:8,max:10}}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:5,force_direction:false},y:{value:0.5,random_direction:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 7
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 4
data modify storage gm4_garden_variety:new component.pointer set value {identifier:104}
data modify storage gm4_garden_variety:new component.relative set value {x:{offset:{min:30,max:70},direction:"forced"},y:{offset:0,direction:"forced"}}
data modify storage gm4_garden_variety:new component.diverge set value {x:true,y:false}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 8
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:pivot"
data modify storage gm4_garden_variety:new component.target set value 4
data modify storage gm4_garden_variety:new component.pointer set value {identifier:104}
data modify storage gm4_garden_variety:new component.relative set value {x:{offset:{min:-70,max:-30},direction:"forced"},y:{offset:0,direction:"forced"}}
data modify storage gm4_garden_variety:new component.diverge set value {x:false,y:false}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 9
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.target set value 104
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:5,offset:0}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:1,thickness:1,quality:3,rounded:true,composite_group:1,pattern:[2]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:8,max:10}}
data modify storage gm4_garden_variety:new component.bend set value {x:{value:5,force_direction:false},y:{value:0.5,random_direction:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component



# store
data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:new sapling.item
