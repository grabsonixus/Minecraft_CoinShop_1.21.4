# open_gui.mcfunction
# Check if player doesn't already have open GUI
execute if entity @s[tag=coinshop.gui_open] run function coinshop:shop/close_gui

# Mark player
tag @s add coinshop.gui_open
tag @s add coinshop.creating_shop
scoreboard players set @s coinshop.timer 2400

# Clear area
function coinshop:utils/clear_area

# Create GUI chest minecart
summon minecraft:chest_minecart ~ ~1 ~ {CustomName:'[{"text":"Shop Creator","color":"gold","bold":true}]',Tags:["coinshop.gui","coinshop.new"],Items:[{Slot:0b,id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'[{"text":"Example: Emerald","color":"green","italic":false}]',"minecraft:lore":['[{"text":"Place items here","color":"gray","italic":true}]','[{"text":"that you want to sell","color":"gray","italic":true}]']}}]}

# Secure chest
execute as @e[type=chest_minecart,tag=coinshop.new] run tag @s remove coinshop.new

# Instructions for player
title @s subtitle [{"text":"Place items in chest","color":"yellow"}]
title @s title [{"text":"SHOP CREATOR","color":"gold","bold":true}]

tellraw @s [{"text":"","color":"gray"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","strikethrough":true}]
tellraw @s [{"text":"                    SHOP CREATOR","color":"gold","bold":true}]
tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"1. ","color":"gold","bold":true},{"text":"Place items to sell in the chest","color":"white"}]
tellraw @s [{"text":"2. ","color":"gold","bold":true},{"text":"Place coins (price) next to each item","color":"white"}]
tellraw @s [{"text":"3. ","color":"gold","bold":true},{"text":"Right-click with ","color":"white"},{"text":"Shop Creator","color":"yellow"},{"text":" to save","color":"white"}]
tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"TIP: ","color":"yellow"},{"text":"Example: Emerald + 5 gold coins = trade","color":"gray"}]
tellraw @s [{"text":"TIMER: ","color":"red"},{"text":"GUI will close automatically in 2 minutes","color":"gray"}]
tellraw @s [{"text":"","color":"gray"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","strikethrough":true}]

# Opening sound
playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 1 1