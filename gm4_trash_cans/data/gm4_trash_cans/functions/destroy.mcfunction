# @s = trash_can that has been broken
# run from update

# Give back items
loot spawn ~ ~.6 ~ loot gm4_trash_cans:destroy_trash_can

# Visuals
particle block piston ~ ~1 ~ .1 .25 .1 .05 30 normal @a

# Kill trash can
kill @s
