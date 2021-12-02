# adds pages to the guidebook
# @s = player who's updating their guidebook
# located at @s
# run from gm4_mob_curing:guidebook/verify_module

data modify storage gm4_guidebook:temp insert set value ['','["",{"text":"◀ ","color":"#4AA0C7","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Return to Table of Contents"},{"translate":"text.gm4.guidebook.return_to_table"}],"italic":true,"color":"gold"}]}},{"translate":"%1$s%3427655$s","with":[{"text":"Back"},{"translate":"text.gm4.guidebook.back"}],"color":"#4AA0C7","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Return to Table of Contents"},{"translate":"text.gm4.guidebook.return_to_table"}],"italic":true,"color":"gold"}]}},{"text":"\\n"},{"text":"☶ ","color":"#864BC7","bold":true,"clickEvent":{"action":"open_url","value":"https://wiki.gm4.co/wiki/Mob_Curing"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Open External Wiki"},{"translate":"text.gm4.guidebook.open_wiki"}],"italic":true,"color":"gold"}]}},{"translate":"%1$s%3427655$s","with":[{"text":"Wiki"},{"translate":"text.gm4.guidebook.wiki"}],"color":"#864BC7","clickEvent":{"action":"open_url","value":"https://wiki.gm4.co/wiki/Mob_Curing"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Open External Wiki"},{"translate":"text.gm4.guidebook.open_wiki"}],"italic":true,"color":"gold"}]}},{"text":"\\n\\n"},{"text":"Mob Curing","underlined":true},{"text":"\\n"},{"translate":"%1$s%3427655$s","with":[{"text":"Similar to Zombie curing, some mobs can be reverted to previous forms.\\n\\nThe curing process requires the player to splash the mob with a potion and drop an item at its feet."},{"translate":"text.gm4.guidebook.mob_curing.1"}]}]','["",{"text":"???","hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Undiscovered"},{"translate":"text.gm4.guidebook.undiscovered"}],"italic":true,"color":"red"}]}}]','["",{"text":"???","hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Undiscovered"},{"translate":"text.gm4.guidebook.undiscovered"}],"italic":true,"color":"red"}]}}]','["",{"text":"???","hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Undiscovered"},{"translate":"text.gm4.guidebook.undiscovered"}],"italic":true,"color":"red"}]}}]']

# unlockable pages
execute if entity @s[advancements={gm4_guidebook:mob_curing/page_1=true}] run data modify storage gm4_guidebook:temp insert[2] set value '["",{"translate":"%1$s%3427655$s","with":[{"text":"Pig from Zombified Piglin\\n  OR\\nHoglin from Zombified Hoglin\\n - Swiftness\\n - Golden Carrot\\n\\nMooshroom from Cow\\n - Slowness\\n - Red Mushroom\\n - Brown Mushroom\\n\\n"},{"translate":"text.gm4.guidebook.mob_curing.2"}]}]'

execute if entity @s[advancements={gm4_guidebook:mob_curing/page_1=true}] run data modify storage gm4_guidebook:temp insert[3] set value '["",{"translate":"%1$s%3427655$s","with":[{"text":"Pillager from Evoker\\n - Slowness IV\\n - Crossbow\\n\\nEvoker from Illusioner\\n - Swiftness\\n - Totem of Undying\\n\\nPotion Cleric from Witch\\n - Weakness\\n - Golden Apple"},{"translate":"text.gm4.guidebook.mob_curing.3"}]}]'

execute if entity @s[advancements={gm4_guidebook:mob_curing/page_3=true}] run data modify storage gm4_guidebook:temp insert[4] set value '["",{"translate":"%1$s%3427655$s","with":[{"text":"The Potion Cleric will trade all types of potions for emeralds. Each potion trade is randomized starting from 3 emeralds, up to 13 emeralds.\\n\\nThe curer will be rewarded temporarily with some discounted potion prices."},{"translate":"text.gm4.guidebook.mob_curing.4"}]}]'
