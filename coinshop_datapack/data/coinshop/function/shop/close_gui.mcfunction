# Usuwanie tagów
tag @s remove coinshop.gui_open
tag @s remove coinshop.creating_shop
scoreboard players reset @s coinshop.timer

# Usuwanie GUI entities
execute as @e[type=chest_minecart,tag=coinshop.gui,distance=..10] run kill @s

# Komunikat
tellraw @s [{"text":"[ℹ] ","color":"blue"},{"text":"Kreator sklepu zamknięty","color":"gray"}]

# Dźwięk zamknięcia
playsound minecraft:block.ender_chest.close player @s ~ ~ ~ 1 1