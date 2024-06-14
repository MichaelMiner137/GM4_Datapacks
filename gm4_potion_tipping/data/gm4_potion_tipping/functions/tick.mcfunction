
schedule function gm4_potion_tipping:tick 1t

scoreboard players remove @a[scores={gm4_ptip_cooldown=1..}] gm4_ptip_cooldown 1
