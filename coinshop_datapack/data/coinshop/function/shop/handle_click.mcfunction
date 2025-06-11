# Debug - sprawdzenie czy funkcja się wykonuje
say [DEBUG] Handle click executed!

# Sprawdzenie czy gracz ma odpowiedni tool
execute unless data entity @s SelectedItem.components."minecraft:custom_data".coinshop{tool:"shop_creator"} run say [DEBUG] Wrong tool or no tool
execute unless data entity @s SelectedItem.components."minecraft:custom_data".coinshop{tool:"shop_creator"} run return fail

say [DEBUG] Tool correct!

# Sprawdzenie czy ma otwarte GUI
execute unless entity @s[tag=coinshop.gui_open] run tellraw @s [{"text":"[❌] ","color":"red"},{"text":"Najpierw otwórz kreator sklepu!","color":"red"}]
execute unless entity @s[tag=coinshop.gui_open] run say [DEBUG] No GUI open
execute unless entity @s[tag=coinshop.gui_open] run return fail

say [DEBUG] GUI is open!

# Sprawdzenie czy w okolicy nie ma już villager'a coinshop
execute if entity @e[type=villager,tag=coinshop.merchant,distance=..5] run tellraw @s [{"text":"[❌] ","color":"red"},{"text":"W pobliżu jest już handlarz coinshop!","color":"red"}]
execute if entity @e[type=villager,tag=coinshop.merchant,distance=..5] run return fail

say [DEBUG] No nearby merchants!

# Sprawdzenie czy skrzynia istnieje
execute unless entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5] run tellraw @s [{"text":"[❌] ","color":"red"},{"text":"Skrzynia GUI nie została znaleziona!","color":"red"}]
execute unless entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5] run return fail

say [DEBUG] Chest found!

# Zapisanie zawartości skrzyni do storage
data modify storage coinshop:temp chest_items set from entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5,limit=1] Items

# Debug - wyświetl zawartość
execute store result score @s coinshop.temp run data get storage coinshop:temp chest_items
tellraw @s [{"text":"[DEBUG] ","color":"yellow"},{"text":"Znaleziono przedmiotów: ","color":"gray"},{"score":{"name":"@s","objective":"coinshop.temp"},"color":"white"}]

# Sprawdzenie czy są jakieś przedmioty
execute if score @s coinshop.temp matches 0 run tellraw @s [{"text":"[❌] ","color":"red"},{"text":"Skrzynia jest pusta!","color":"red"}]
execute if score @s coinshop.temp matches 0 run return fail

# Wyczyść stare recipes i zacznij budować nowe
data remove storage coinshop:temp recipes
data modify storage coinshop:temp recipes set value []

say [DEBUG] Starting recipe analysis...

# Przetwórz układy przedmiotów (kolumny 0-8)
function coinshop:shop/columns/analyze_column_0
function coinshop:shop/columns/analyze_column_1
function coinshop:shop/columns/analyze_column_2
function coinshop:shop/columns/analyze_column_3
function coinshop:shop/columns/analyze_column_4
function coinshop:shop/columns/analyze_column_5
function coinshop:shop/columns/analyze_column_6
function coinshop:shop/columns/analyze_column_7
function coinshop:shop/columns/analyze_column_8

# Sprawdź ile ofert utworzono
execute store result score @s coinshop.gui run data get storage coinshop:temp recipes
tellraw @s [{"text":"[DEBUG] ","color":"yellow"},{"text":"Utworzono ofert: ","color":"gray"},{"score":{"name":"@s","objective":"coinshop.gui"},"color":"white"}]

# Jeśli brak ofert, użyj domyślnych
execute if score @s coinshop.gui matches 0 run function coinshop:shop/create_default_merchant
execute if score @s coinshop.gui matches 1.. run function coinshop:shop/create_dynamic_merchant