# finish_creation.mcfunction
# Close GUI
tag @s remove coinshop.gui_open
tag @s remove coinshop.creating_shop
scoreboard players reset @s coinshop.timer

# Remove GUI entities
execute as @e[type=chest_minecart,tag=coinshop.gui,distance=..10] run kill @s

# Messages
tellraw @s [{"text":"[SUCCESS] ","color":"green"},{"text":"Merchant has been created with your offers!","color":"green"}]
tellraw @s [{"text":"[TIP] ","color":"yellow"},{"text":"Right-click to trade.","color":"gray"}]
tellraw @s [{"text":"[INFO] ","color":"blue"},{"text":"Shop creator closed","color":"gray"}]

# Effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.villager.yes player @s ~ ~ ~ 1 1
playsound minecraft:block.ender_chest.close player @s ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20

say [DEBUG] Merchant creation completed!