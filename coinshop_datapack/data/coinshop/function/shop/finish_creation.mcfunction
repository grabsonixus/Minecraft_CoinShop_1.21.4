# Zamknięcie GUI
tag @s remove coinshop.gui_open
tag @s remove coinshop.creating_shop
scoreboard players reset @s coinshop.timer

# Usuwanie GUI entities
execute as @e[type=chest_minecart,tag=coinshop.gui,distance=..10] run kill @s

# Komunikaty
tellraw @s [{"text":"[✓] ","color":"green"},{"text":"Handlarz został utworzony z Twoimi ofertami!","color":"green"}]
tellraw @s [{"text":"[💡] ","color":"yellow"},{"text":"Kliknij prawym aby handlować.","color":"gray"}]
tellraw @s [{"text":"[ℹ] ","color":"blue"},{"text":"Kreator sklepu zamknięty","color":"gray"}]

# Efekty
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.villager.yes player @s ~ ~ ~ 1 1
playsound minecraft:block.ender_chest.close player @s ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20

say [DEBUG] Merchant creation completed!