# places a TREE_TYPE fruit marker
# run from TODO

# randomly set the armor stands rotation
scoreboard players operation fruit_direction gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation fruit_direction gm4_tree_data %= #4 gm4_math_num
function gm4_garden_variety:get/next_seed_value

# place fruit marker based on direction
execute if score fruit_direction gm4_tree_data matches 0 align xyz run summon armor_stand ~0.5 ~-.9 ~0.5 {CustomName:'"King Palm Fruit Leaf"',Tags:["gm4_fruiting_leaf_new"],Small:0b,Invisible:1b,Invulnerable:1b,NoGravity:1,DisabledSlots:65598,Pose:{RightArm:[0.0f,270.0f,270.0f]},Rotation:[0.0f,0.0f]}
execute if score fruit_direction gm4_tree_data matches 1 align xyz run summon armor_stand ~0.5 ~-.9 ~0.5 {CustomName:'"King Palm Fruit Leaf"',Tags:["gm4_fruiting_leaf_new"],Small:0b,Invisible:1b,Invulnerable:1b,NoGravity:1,DisabledSlots:65598,Pose:{RightArm:[0.0f,270.0f,270.0f]},Rotation:[90.0f,0.0f]}
execute if score fruit_direction gm4_tree_data matches 2 align xyz run summon armor_stand ~0.5 ~-.9 ~0.5 {CustomName:'"King Palm Fruit Leaf"',Tags:["gm4_fruiting_leaf_new"],Small:0b,Invisible:1b,Invulnerable:1b,NoGravity:1,DisabledSlots:65598,Pose:{RightArm:[0.0f,270.0f,270.0f]},Rotation:[180.0f,0.0f]}
execute if score fruit_direction gm4_tree_data matches 3 align xyz run summon armor_stand ~0.5 ~-.9 ~0.5 {CustomName:'"King Palm Fruit Leaf"',Tags:["gm4_fruiting_leaf_new"],Small:0b,Invisible:1b,Invulnerable:1b,NoGravity:1,DisabledSlots:65598,Pose:{RightArm:[0.0f,270.0f,270.0f]},Rotation:[270.0f,0.0f]}

# initialize
execute as @e[type=armor_stand,tag=gm4_fruiting_leaf_new,limit=1] at @s run function gm4_natural_trees:generate/king_palm/fruiting/leaf/fruit/initialize
