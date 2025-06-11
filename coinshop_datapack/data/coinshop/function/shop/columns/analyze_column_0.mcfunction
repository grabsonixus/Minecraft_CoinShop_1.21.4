# Analiza kolumny 0 (sloty 0, 9, 18)
# Slot 0 = cena górna, Slot 9 = cena dolna, Slot 18 = przedmiot

# Sprawdź czy w slot 18 jest przedmiot do sprzedaży
execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:18b}]
execute if score @s coinshop.temp matches 0 run return fail

say [DEBUG] Column 0: Found item in slot 18

# Skopiuj przedmiot ze slot 18
data modify storage coinshop:temp current_sell set from storage coinshop:temp chest_items[{Slot:18b}]
data remove storage coinshop:temp current_sell.Slot

# Sprawdź cenę w slot 0
execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:0b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:0b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

# Jeśli brak ceny w slot 0, sprawdź slot 9
execute if score @s coinshop.temp matches 0 store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:9b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:9b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

# Jeśli znaleziono cenę, dodaj ofertę
execute if score @s coinshop.temp matches 1 run function coinshop:shop/add_recipe
execute if score @s coinshop.temp matches 1 run say [DEBUG] Column 0: Recipe added
execute if score @s coinshop.temp matches 0 run say [DEBUG] Column 0: No price found