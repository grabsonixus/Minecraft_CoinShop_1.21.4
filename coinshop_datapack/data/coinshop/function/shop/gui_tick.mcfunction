# Sprawdzanie czy skrzynia nadal istnieje
execute unless entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5] run function coinshop:shop/close_gui

# Sprawdzanie odległości
execute unless entity @s[distance=..10] run function coinshop:shop/close_gui

# Particle effects dla GUI
execute as @e[type=chest_minecart,tag=coinshop.gui,distance=..5] at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 2
execute as @e[type=chest_minecart,tag=coinshop.gui,distance=..5] at @s run particle minecraft:enchant ~ ~0.8 ~ 0.2 0.2 0.2 0 1