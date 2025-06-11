say [DEBUG] No valid recipes found, creating default merchant...

# Villager z domyślnymi ofertami 
execute positioned ~ ~ ~ run summon minecraft:villager ~ ~ ~ {CustomName:'[{"text":"🏪 Handlarz Domyślny","color":"green","bold":true}]',Tags:["coinshop.merchant"],VillagerData:{profession:"minecraft:none",level:5,type:"minecraft:plains"},Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:0b,Offers:{Recipes:[{buy:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_data":{coinshop:{type:"gold_coin"}}}},sell:{id:"minecraft:diamond",count:1},rewardExp:0b,maxUses:999999,uses:0,priceMultiplier:0.0f},{buy:{id:"minecraft:iron_nugget",count:3,components:{"minecraft:custom_data":{coinshop:{type:"silver_coin"}}}},sell:{id:"minecraft:emerald",count:1},rewardExp:0b,maxUses:999999,uses:0,priceMultiplier:0.0f}]}}

function coinshop:shop/finish_creation