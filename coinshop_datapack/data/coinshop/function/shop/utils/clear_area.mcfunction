# Usuwanie starych GUI
execute as @e[type=chest_minecart,distance=..10] run kill @s

# Usuwanie dropped items w okolicy
execute as @e[type=item,distance=..5] run kill @s

# Czyszczenie particle effects
particle minecraft:poof ~ ~ ~ 1 1 1 0 10
particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0 5