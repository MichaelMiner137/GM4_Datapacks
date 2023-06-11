schedule function gm4_garden_variety:main 16t

# process apples
#execute as @e[type=armor_stand,tag=gm4_apple_uninitialized] run function gm4_apple_trees:leaf/initialize
#execute as @e[type=armor_stand,tag=gm4_apple] at @s align xyz run function gm4_garden_variety:leaf/process
