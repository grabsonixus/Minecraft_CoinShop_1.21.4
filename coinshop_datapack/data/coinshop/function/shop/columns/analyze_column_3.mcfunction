# Analiza kolumny 3 (sloty 3, 12, 21)
execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:21b}]
execute if score @s coinshop.temp matches 0 run return fail

say [DEBUG] Column 3: Found item in slot 21

data modify storage coinshop:temp current_sell set from storage coinshop:temp chest_items[{Slot:21b}]
data remove storage coinshop:temp current_sell.Slot

execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:3b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:3b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

execute if score @s coinshop.temp matches 0 store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:12b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:12b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

execute if score @s coinshop.temp matches 1 run function coinshop:shop/add_recipe
execute if score @s coinshop.temp matches 1 run say [DEBUG] Column 3: Recipe added