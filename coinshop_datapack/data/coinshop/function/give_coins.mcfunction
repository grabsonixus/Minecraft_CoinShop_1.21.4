# Dawanie testowych monet - brown_dye z poprawną składnią
give @s minecraft:brown_dye[custom_name='[{"text":"Złota Moneta ⭐","color":"gold","italic":false,"bold":true}]',lore=['[{"text":"Najcenniejsza moneta","color":"yellow","italic":true}]','[{"text":"Wartość: 100 brązowych","color":"gray","italic":true}]'],custom_data={coinshop:{type:"gold_coin",value:100}},custom_model_data={strings:['gold_coin']},enchantment_glint_override=true] 5

give @s minecraft:brown_dye[custom_name='[{"text":"Srebrna Moneta ⚪","color":"gray","italic":false,"bold":true}]',lore=['[{"text":"Średnia wartość","color":"dark_gray","italic":true}]','[{"text":"Wartość: 10 brązowych","color":"gray","italic":true}]'],custom_data={coinshop:{type:"silver_coin",value:10}},custom_model_data={strings:['silver_coin']}] 25

give @s minecraft:brown_dye[custom_name='[{"text":"Brązowa Moneta 🟤","color":"#B87333","italic":false,"bold":true}]',lore=['[{"text":"Podstawowa moneta","color":"#8B4513","italic":true}]','[{"text":"Wartość: 1","color":"gray","italic":true}]'],custom_data={coinshop:{type:"bronze_coin",value:1}},custom_model_data={strings:['bronze_coin']}] 50

# Bonus - tool do tworzenia sklepów
give @s minecraft:carrot_on_a_stick[custom_name='[{"text":"Kreator Sklepów 🛠️","color":"gold","italic":false}]',lore=['[{"text":"Kliknij prawym aby otworzyć","color":"yellow","italic":true}]','[{"text":"kreator sklepów","color":"yellow","italic":true}]'],custom_data={coinshop:{tool:"shop_creator"}},custom_model_data={strings:['shop_creator']},enchantment_glint_override=true] 1

tellraw @s [{"text":"[💰] ","color":"gold"},{"text":"Otrzymano startowy zestaw monet i narzędzi!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2