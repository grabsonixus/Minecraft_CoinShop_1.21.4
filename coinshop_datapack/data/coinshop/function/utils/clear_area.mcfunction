# clear_area.mcfunction
# Remove old GUI
execute as @e[type=chest_minecart,distance=..10] run kill @s

# Remove dropped items in area
execute as @e[type=item,distance=..5] run kill @s

# Clear particle effects
particle minecraft:poof ~ ~ ~ 1 1 1 0 10
particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0 5
