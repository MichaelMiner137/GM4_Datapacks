# @s = armor_stand ..1 from written book

function gm4_poses_pack:pose/update_values
data merge entity @s {Pose:{LeftLeg:[0f,0f,0f]}}

data modify entity @s Pose.LeftLeg[2] set value 0f
execute store result entity @s Pose.LeftLeg[0] float 1 run scoreboard players remove @s gm4_pose_rotPx 90
execute store result entity @s Pose.LeftLeg[1] float 1 run scoreboard players get @s gm4_pose_rotPy
