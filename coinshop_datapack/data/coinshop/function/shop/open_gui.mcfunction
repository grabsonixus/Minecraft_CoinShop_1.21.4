# Sprawdzenie czy gracz nie ma już otwartego GUI
execute if entity @s[tag=coinshop.gui_open] run function coinshop:shop/close_gui

# Oznaczenie gracza
tag @s add coinshop.gui_open
tag @s add coinshop.creating_shop
scoreboard players set @s coinshop.timer 2400

# Czyszczenie obszaru
function coinshop:utils/clear_area

# Tworzenie GUI chest minecart
summon minecraft:chest_minecart ~ ~1 ~ {CustomName:'[{"text":"💰 Kreator Sklepu 💰","color":"gold","bold":true}]',Tags:["coinshop.gui","coinshop.new"],Items:[{Slot:0b,id:"minecraft:emerald",count:1,components:{"minecraft:custom_name":'[{"text":"Przykład: Szmaragd","color":"green","italic":false}]',"minecraft:lore":['[{"text":"Umieść tutaj przedmioty","color":"gray","italic":true}]','[{"text":"które chcesz sprzedawać","color":"gray","italic":true}]']}}]}

# Zabezpieczenie skrzyni
execute as @e[type=chest_minecart,tag=coinshop.new] run tag @s remove coinshop.new

# Instrukcje dla gracza
title @s subtitle [{"text":"Umieść przedmioty w skrzyni","color":"yellow"}]
title @s title [{"text":"KREATOR SKLEPU","color":"gold","bold":true}]

tellraw @s [{"text":"","color":"gray"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","strikethrough":true}]
tellraw @s [{"text":"                    💰 KREATOR SKLEPU 💰","color":"gold","bold":true}]
tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"1. ","color":"gold","bold":true},{"text":"Umieść przedmioty do sprzedaży w skrzyni","color":"white"}]
tellraw @s [{"text":"2. ","color":"gold","bold":true},{"text":"Obok każdego przedmiotu umieść monety (cenę)","color":"white"}]
tellraw @s [{"text":"3. ","color":"gold","bold":true},{"text":"Kliknij prawym przyciskiem ","color":"white"},{"text":"Kreator Sklepów","color":"yellow"},{"text":" aby zapisać","color":"white"}]
tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"💡 ","color":"yellow"},{"text":"Przykład: Szmaragd + 5 złotych monet = handel","color":"gray"}]
tellraw @s [{"text":"⏰ ","color":"red"},{"text":"GUI zamknie się automatycznie za 2 minuty","color":"gray"}]
tellraw @s [{"text":"","color":"gray"},{"text":"▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬","strikethrough":true}]

# Dźwięk otwarcia
playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 1 1