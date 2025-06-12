# create_dynamic_merchant.mcfunction
say [DEBUG] Creating dynamic merchant with custom recipes...

# Debug - check if recipes exist in storage
execute store result score @s coinshop.gui run data get storage coinshop:temp recipes
tellraw @s [{"text":"[DEBUG] ","color":"red"},{"text":"Recipes in storage: ","color":"gray"},{"score":{"name":"@s","objective":"coinshop.gui"},"color":"white"}]

# Creating villager with dynamic offers
say [DEBUG] Attempting to summon villager...
execute positioned ~ ~ ~ run summon minecraft:villager ~ ~ ~ {CustomName:'[{"text":"Custom Merchant","color":"green","bold":true}]',Tags:["coinshop.merchant","coinshop.dynamic"],VillagerData:{profession:"minecraft:none",level:5,type:"minecraft:plains"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:0b,Offers:{Recipes:[]}}

# Debug - check if villager was created
execute if entity @e[type=villager,tag=coinshop.dynamic] run say [DEBUG] Villager summoned successfully!
execute unless entity @e[type=villager,tag=coinshop.dynamic] run say [DEBUG] ERROR: Villager NOT summoned!

# Replace empty recipes with dynamic ones
execute as @e[type=villager,tag=coinshop.dynamic,limit=1] run say [DEBUG] Found dynamic villager, setting recipes...
data modify entity @e[type=villager,tag=coinshop.dynamic,limit=1] Offers.Recipes set from storage coinshop:temp recipes

# Debug - check recipes after setting
execute as @e[type=villager,tag=coinshop.dynamic,limit=1] store result score @s coinshop.temp run data get entity @s Offers.Recipes
execute as @e[type=villager,tag=coinshop.dynamic,limit=1] run tellraw @a [{"text":"[DEBUG] ","color":"red"},{"text":"Villager has recipes: ","color":"gray"},{"score":{"name":"@s","objective":"coinshop.temp"},"color":"white"}]

# Remove dynamic tag
tag @e[type=villager,tag=coinshop.dynamic] remove coinshop.dynamic

say [DEBUG] Calling finish_creation...
function coinshop:shop/finish_creation