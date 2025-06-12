# handle_click.mcfunction
# Debug - check if function executes
say [DEBUG] Handle click executed!

# Check if player has correct tool
execute unless data entity @s SelectedItem.components."minecraft:custom_data".coinshop{tool:"shop_creator"} run say [DEBUG] Wrong tool or no tool
execute unless data entity @s SelectedItem.components."minecraft:custom_data".coinshop{tool:"shop_creator"} run return fail

say [DEBUG] Tool correct!

# Check if GUI is open
execute unless entity @s[tag=coinshop.gui_open] run tellraw @s [{"text":"[ERROR] ","color":"red"},{"text":"Open shop creator first!","color":"red"}]
execute unless entity @s[tag=coinshop.gui_open] run say [DEBUG] No GUI open
execute unless entity @s[tag=coinshop.gui_open] run return fail

say [DEBUG] GUI is open!

# Check if there's already a coinshop villager nearby
execute if entity @e[type=villager,tag=coinshop.merchant,distance=..5] run tellraw @s [{"text":"[ERROR] ","color":"red"},{"text":"There's already a coinshop merchant nearby!","color":"red"}]
execute if entity @e[type=villager,tag=coinshop.merchant,distance=..5] run return fail

say [DEBUG] No nearby merchants!

# Check if chest exists
execute unless entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5] run tellraw @s [{"text":"[ERROR] ","color":"red"},{"text":"GUI chest not found!","color":"red"}]
execute unless entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5] run return fail

say [DEBUG] Chest found!

# Save chest contents to storage
data modify storage coinshop:temp chest_items set from entity @e[type=chest_minecart,tag=coinshop.gui,distance=..5,limit=1] Items

# Debug - display contents
execute store result score @s coinshop.temp run data get storage coinshop:temp chest_items
tellraw @s [{"text":"[DEBUG] ","color":"yellow"},{"text":"Items found: ","color":"gray"},{"score":{"name":"@s","objective":"coinshop.temp"},"color":"white"}]

# Check if there are any items
execute if score @s coinshop.temp matches 0 run tellraw @s [{"text":"[ERROR] ","color":"red"},{"text":"Chest is empty!","color":"red"}]
execute if score @s coinshop.temp matches 0 run return fail

# Clear old recipes and start building new ones
data remove storage coinshop:temp recipes
data modify storage coinshop:temp recipes set value []

say [DEBUG] Starting recipe analysis...

# Process item arrangements (columns 0-8)
function coinshop:shop/columns/analyze_column_0
function coinshop:shop/columns/analyze_column_1
function coinshop:shop/columns/analyze_column_2
function coinshop:shop/columns/analyze_column_3
function coinshop:shop/columns/analyze_column_4
function coinshop:shop/columns/analyze_column_5
function coinshop:shop/columns/analyze_column_6
function coinshop:shop/columns/analyze_column_7
function coinshop:shop/columns/analyze_column_8

# Check how many offers were created
execute store result score @s coinshop.gui run data get storage coinshop:temp recipes
tellraw @s [{"text":"[DEBUG] ","color":"yellow"},{"text":"Offers created: ","color":"gray"},{"score":{"name":"@s","objective":"coinshop.gui"},"color":"white"}]

# If no offers, use default ones
execute if score @s coinshop.gui matches 0 run function coinshop:shop/create_default_merchant
execute if score @s coinshop.gui matches 1.. run function coinshop:shop/create_dynamic_merchant
