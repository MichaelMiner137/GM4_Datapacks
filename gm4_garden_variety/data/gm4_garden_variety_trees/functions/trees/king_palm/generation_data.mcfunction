
# reset
data remove storage gm4_garden_variety:new sapling

# component 1
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.chance set value 100
data modify storage gm4_garden_variety:new component.target set value 0
data modify storage gm4_garden_variety:new component.pointer.begin set value {identifier:-101,offset:0}
data modify storage gm4_garden_variety:new component.pointer.middle set value {identifier:-102,offset:0}
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:-103,offset:0}
data modify storage gm4_garden_variety:new component.pointer.fill set value {identifier:-104,start:1,stop:999}
data modify storage gm4_garden_variety:new component.pointer.pattern set value {identifiers:[-1,-1,-1,-1,-1,105],start:1,stop:999}
data modify storage gm4_garden_variety:new component.pointer.random set value {identifier:-106,chance:50,start:1,stop:999}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:101,thickness:3,quality:3,rounded:true,composite_group:1,pattern:[1]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:22,max:25}}
data modify storage gm4_garden_variety:new component.x.rotation set value {value:{min:0,max:360}}
data modify storage gm4_garden_variety:new component.x.bend set value {value:5,force_direction:false}
data modify storage gm4_garden_variety:new component.x.curl set value {value:0,start:1,stop:999}
data modify storage gm4_garden_variety:new component.y.rotation set value {value:{min:-85,max:-75}}
data modify storage gm4_garden_variety:new component.y.bend set value {value:0.50,random_direction:false}
data modify storage gm4_garden_variety:new component.y.curl set value {value:0.10,start:1,stop:999}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 2
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:split"
data modify storage gm4_garden_variety:new component.chance set value 100
data modify storage gm4_garden_variety:new component.target set value 105
data modify storage gm4_garden_variety:new component.pointer set value {identifier:201}
data modify storage gm4_garden_variety:new component.x.rotation set value {offset:{value:{min:-180,max:180},force_direction:true},direction:{diverge:false}}
data modify storage gm4_garden_variety:new component.y.rotation set value {offset:{value:10,random_direction:false},direction:{diverge:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 3
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.chance set value 100
data modify storage gm4_garden_variety:new component.target set value 201
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:301,offset:0}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:101,thickness:2,quality:3,rounded:true,composite_group:1,pattern:[1,2]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:7,max:9}}
data modify storage gm4_garden_variety:new component.x.bend set value {value:0,force_direction:false}
data modify storage gm4_garden_variety:new component.x.curl set value {value:0,start:1,stop:999}
data modify storage gm4_garden_variety:new component.y.bend set value {value:0,random_direction:false}
data modify storage gm4_garden_variety:new component.y.curl set value {value:0,start:1,stop:999}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 4
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:split"
data modify storage gm4_garden_variety:new component.chance set value 100
data modify storage gm4_garden_variety:new component.target set value 301
data modify storage gm4_garden_variety:new component.pointer set value {identifier:301}
data modify storage gm4_garden_variety:new component.x.rotation set value {offset:{value:{min:0,max:180},force_direction:false},direction:{diverge:false}}
data modify storage gm4_garden_variety:new component.y.rotation set value {offset:{value:0,random_direction:false},direction:{diverge:false}}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component

# component 5
data remove storage gm4_garden_variety:new component
data modify storage gm4_garden_variety:new component.type set value "garden_variety:line"
data modify storage gm4_garden_variety:new component.chance set value 100
data modify storage gm4_garden_variety:new component.target set value 301
data modify storage gm4_garden_variety:new component.pointer.end set value {identifier:501,offset:0}
data modify storage gm4_garden_variety:new component.placeholder set value {identifier:101,thickness:1,quality:3,rounded:true,composite_group:1,pattern:[1,2,2]}
data modify storage gm4_garden_variety:new component.length set value {value:{min:7,max:9}}
data modify storage gm4_garden_variety:new component.x.bend set value {value:0,force_direction:false}
data modify storage gm4_garden_variety:new component.x.curl set value {value:0,start:1,stop:999}
data modify storage gm4_garden_variety:new component.y.bend set value {value:0,random_direction:false}
data modify storage gm4_garden_variety:new component.y.curl set value {value:0,start:1,stop:999}
data modify storage gm4_garden_variety:new sapling.item.generation.components append from storage gm4_garden_variety:new component


# store
data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:new sapling.item
