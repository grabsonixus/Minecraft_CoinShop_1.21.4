# give_coins.mcfunction
# Give test coins of all types
give @s minecraft:brown_dye[custom_name='[{"text":"Gold Coin","color":"gold","bold":true}]',lore=['[{"text":"Most valuable coin","color":"dark_gray","italic":true}]','[{"text":"Value: 100 bronze","color":"gray","italic":true}]'],custom_data={coinshop:{type:"gold_coin",value:100}},custom_model_data={strings:['gold_coin']},enchantment_glint_override=true] 5

give @s minecraft:brown_dye[custom_name='[{"text":"Silver Coin","color":"gray","bold":true}]',lore=['[{"text":"Medium value","color":"dark_gray","italic":true}]','[{"text":"Value: 10 bronze","color":"gray","italic":true}]'],custom_data={coinshop:{type:"silver_coin",value:10}},custom_model_data={strings:['silver_coin']}] 25

give @s minecraft:brown_dye[custom_name='[{"text":"Bronze Coin","color":"#CD7F32","bold":true}]',lore=['[{"text":"Basic coin","color":"dark_gray","italic":true}]','[{"text":"Value: 1","color":"gray","italic":true}]'],custom_data={coinshop:{type:"bronze_coin",value:1}},custom_model_data={strings:['bronze_coin']}] 50

give @s minecraft:carrot_on_a_stick[custom_name='[{"text":"Shop Creator","color":"yellow","bold":true}]',lore=['[{"text":"Right-click to create shop","color":"dark_gray","italic":true}]','[{"text":"Place items in GUI first","color":"gray","italic":true}]'],custom_data={coinshop:{tool:"shop_creator"}},custom_model_data={strings:['shop_creator']},enchantment_glint_override=true] 1

tellraw @s [{"text":"[COINS] ","color":"gold"},{"text":"Received starter coin set and tools!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2