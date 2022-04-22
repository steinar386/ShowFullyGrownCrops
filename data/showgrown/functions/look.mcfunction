# Version 1.2
# * Any hoe in primary hand
# * All vanilla crops which has growth stages

execute if block ~ ~ ~ minecraft:wheat[age=7] run title @s actionbar {"text":"Fully grown wheat", "color":"white"}
execute if block ~ ~ ~ minecraft:potatoes[age=7] run title @s actionbar {"text":"Fully grown potatoes", "color":"yellow"}
execute if block ~ ~ ~ minecraft:carrots[age=7] run title @s actionbar {"text":"Fully grown carrots", "color":"gold"}
execute if block ~ ~ ~ minecraft:beetroots[age=3] run title @s actionbar {"text":"Fully grown beets", "color":"red"}
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run title @s actionbar {"text":"Fully grown nether warts", "color":"dark_red"}
execute if block ~ ~ ~ minecraft:air run title @s actionbar {"text":"", "color":"white"}

scoreboard players remove @s range 1
execute if score @s range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function showgrown:look

scoreboard players set @s range 20


# Credit to people like these:
# Cloud Wolf : https://www.youtube.com/channel/UCZnBqVITQ0dloqUU0fGxY3g
# Legitimoose : https://www.youtube.com/channel/UCFkT7atm3HrSm5nYaXah5Ww

# To debug where the player is looking put this line in the loop
# particle crit ~ ~ ~ 0 0 0 0 1