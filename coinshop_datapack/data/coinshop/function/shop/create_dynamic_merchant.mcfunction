say [DEBUG] Creating dynamic merchant with custom recipes...

# Tworzenie villager'a z dynamicznymi ofertami
execute positioned ~ ~ ~ run summon minecraft:villager ~ ~ ~ {CustomName:'[{"text":"🏪 Handlarz","color":"green","bold":true}]',Tags:["coinshop.merchant","coinshop.dynamic"],VillagerData:{profession:"minecraft:none",level:5,type:"minecraft:plains"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:0b,Offers:{Recipes:[]}}

# Zastąp puste recipes dynamicznymi
data modify entity @e[type=villager,tag=coinshop.dynamic,limit=1] Offers.Recipes set from storage coinshop:temp recipes

# Usuń tag dynamic
tag @e[type=villager,tag=coinshop.dynamic] remove coinshop.dynamic

function coinshop:shop/finish_creation