
# reset
scoreboard players reset * gm4_gv_component


# [ Default Settings]

#scoreboard players set $pointer.identifier gm4_gv_component -1
#scoreboard players set $diverge.x gm4_gv_component 0
#scoreboard players set $diverge.y gm4_gv_component 0
#scoreboard players set $flip.x gm4_gv_component 0
#scoreboard players set $flip.y gm4_gv_component 0


# [ Pointer Settings ]

# pointer data
data remove storage gm4_garden_variety:reference pointer
data modify storage gm4_garden_variety:reference pointer set from entity @s data.gm4_garden_variety.pointer

#execute store result score #pointer.x.rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.rotation
#execute store result score #pointer.y.rotation gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.rotation
#execute store result score #pointer.x.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.x.bend.direction
#execute store result score #pointer.y.bend.direction gm4_gv_component run data get storage gm4_garden_variety:reference pointer.y.bend.direction


# [ Sapling Settings ]

#execute if data storage gm4_garden_variety:reference component.pointer.identifier store result score $pointer.identifier gm4_gv_component run data get storage gm4_garden_variety:reference component.pointer.identifier
#execute if data storage gm4_garden_variety:reference component.diverge.x store result score $diverge.x gm4_gv_component run data get storage gm4_garden_variety:reference component.diverge.x
#execute if data storage gm4_garden_variety:reference component.diverge.y store result score $diverge.y gm4_gv_component run data get storage gm4_garden_variety:reference component.diverge.y
#execute if data storage gm4_garden_variety:reference component.flip.x store result score $flip.x gm4_gv_component run data get storage gm4_garden_variety:reference component.flip.x
#execute if data storage gm4_garden_variety:reference component.flip.y store result score $flip.y gm4_gv_component run data get storage gm4_garden_variety:reference component.flip.y


# [ Interpret ]

# diverge / flip
#execute if score $flip.x gm4_gv_component matches 1 run scoreboard players add #pointer.x.rotation gm4_gv_component 180
#execute if score $flip.y gm4_gv_component matches 1 run scoreboard players operation #pointer.y.rotation gm4_gv_component *= #-1 gm4_garden_variety
#execute if score $diverge.x gm4_gv_component matches 1 run scoreboard players operation #pointer.x.bend.direction gm4_gv_component *= #-1 gm4_garden_variety
#execute if score $diverge.y gm4_gv_component matches 1 run scoreboard players operation #pointer.y.bend.direction gm4_gv_component *= #-1 gm4_garden_variety
