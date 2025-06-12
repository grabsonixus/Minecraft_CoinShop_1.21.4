# close_gui.mcfunction
# Remove tags
tag @s remove coinshop.gui_open
tag @s remove coinshop.creating_shop
scoreboard players reset @s coinshop.timer

# Remove GUI entities
execute as @e[type=chest_minecart,tag=coinshop.gui,distance=..10] run kill @s

# Message
tellraw @s [{"text":"[INFO] ","color":"blue"},{"text":"Shop creator closed","color":"gray"}]

# Close sound
playsound minecraft:block.ender_chest.close player @s ~ ~ ~ 1 1