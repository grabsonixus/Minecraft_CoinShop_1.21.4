# Analiza kolumny 8 (sloty 8, 17, 26)
execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:26b}]
execute if score @s coinshop.temp matches 0 run return fail

say [DEBUG] Column 8: Found item in slot 26

data modify storage coinshop:temp current_sell set from storage coinshop:temp chest_items[{Slot:26b}]
data remove storage coinshop:temp current_sell.Slot

execute store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:8b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:8b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

execute if score @s coinshop.temp matches 0 store success score @s coinshop.temp run data get storage coinshop:temp chest_items[{Slot:17b}]
execute if score @s coinshop.temp matches 1 run data modify storage coinshop:temp current_buy set from storage coinshop:temp chest_items[{Slot:17b}]
execute if score @s coinshop.temp matches 1 run data remove storage coinshop:temp current_buy.Slot

execute if score @s coinshop.temp matches 1 run function coinshop:shop/add_recipe
execute if score @s coinshop.temp matches 1 run say [DEBUG] Column 8: Recipe added