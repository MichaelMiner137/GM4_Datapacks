# finds the lectern
# @s = player that opened a lectern without a book
# located at @s
# run from advancement gm4_guidebook:open_updating_lectern

advancement revoke @s only gm4_guidebook:open_updating_lectern

# raycast to lectern
scoreboard players set $ray gm4_guide 50
scoreboard players set $found gm4_guide 0
execute anchored eyes positioned ^ ^ ^ run function gm4_guidebook:lecterns/replace/ray

# clean up
scoreboard players reset $ray gm4_guide
