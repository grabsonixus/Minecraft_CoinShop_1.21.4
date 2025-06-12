# remove_merchant.mcfunction
# Function to remove merchants (use when you want to remove)
execute as @e[type=villager,tag=coinshop.merchant,distance=..5] run particle minecraft:poof ~ ~1 ~ 0.3 0.3 0.3 0 10
execute as @e[type=villager,tag=coinshop.merchant,distance=..5] run kill @s
tellraw @s [{"text":"[REMOVED] ","color":"red"},{"text":"Coinshop merchants in the area have been removed","color":"gray"}]
playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1.5