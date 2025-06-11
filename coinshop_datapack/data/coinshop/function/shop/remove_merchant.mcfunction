# Funkcja do usuwania handlarzy (użyj gdy chcesz usunąć)
execute as @e[type=villager,tag=coinshop.merchant,distance=..5] run particle minecraft:poof ~ ~1 ~ 0.3 0.3 0.3 0 10
execute as @e[type=villager,tag=coinshop.merchant,distance=..5] run kill @s
tellraw @s [{"text":"[🗑️] ","color":"red"},{"text":"Handlarze coinshop w okolicy zostali usunięci","color":"gray"}]
playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1.5