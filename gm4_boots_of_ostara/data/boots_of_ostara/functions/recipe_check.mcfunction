execute if score @s gm4_slot_count matches 5 if score @s gm4_stack_size matches ..1 if block ~ ~ ~ dropper{Items:[{Slot:1b,id:"minecraft:grass_block",Count:1b},{Slot:3b,id:"minecraft:carrot",Count:1b},{Slot:4b,id:"minecraft:leather_boots",Count:1b},{Slot:5b,id:"minecraft:potato",Count:1b},{Slot:7b,id:"minecraft:wheat_seeds",Count:1b}]} run data merge block ~ ~ ~ {Items:[{Slot:4b,id:"minecraft:leather_boots",Count:1b,tag:{CustomModelData:1,gm4_custom_crafters:{multiplier:1},gm4_boots_of_ostara:1b,display:{Lore:['{"translate":"%1$s%3427655$s","with":["Brings Abundance Beneath You!",{"translate":"item.gm4.boots_of_ostara.lore"}]}'],color:3705899,Name:'{"translate":"%1$s%3427655$s","with":["Boots of Ostara",{"translate":"item.gm4.boots_of_ostara"}],"italic":false}'}}}]}
