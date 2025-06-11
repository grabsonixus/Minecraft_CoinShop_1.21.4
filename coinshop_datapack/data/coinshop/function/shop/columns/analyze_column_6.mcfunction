# Analiza kolumny 6 (sloty 6, 15, 24)
execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:24b}]
execute if score @s coinshop.temp matches 0 run return fail

say [DEBUG] Column 6: Found item in slot 24

data modify storage coinshop:temp current_sell set from storage coinshop:temp chest_items[{Slot:24b}]
data remove storage coinshop:temp current_sell.Slot

execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:6b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:6b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

execute if score @s coinshop.temp matches 0 store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:15b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:15b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

execute if score @s coinshop.temp matches 1 run function coinshop:shop/add_recipe
execute if score @s coinshop.temp matches 1 run say [DEBUG] Column 6: Recipe added