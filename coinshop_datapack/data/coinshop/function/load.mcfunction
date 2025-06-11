# Coinshop Datapack v1.1 - Inicjalizacja
tellraw @a [{"text":"[⚠] ","color":"gold"},{"text":"Coinshop Datapack załadowany!","color":"green"}]
tellraw @a [{"text":"Dostępne komendy:","color":"yellow"}]
tellraw @a [{"text":"• /function coinshop:give_coins","color":"aqua"},{"text":" - Otrzymaj testowe monety","color":"gray"}]
tellraw @a [{"text":"• /function coinshop:shop/open_gui","color":"aqua"},{"text":" - Otwórz kreator sklepu","color":"gray"}]

# Tworzenie scoreboardów
scoreboard objectives add coinshop.temp dummy "Coinshop Temp"
scoreboard objectives add coinshop.gui dummy "Coinshop GUI"
scoreboard objectives add coinshop.timer dummy "Coinshop Timer"
scoreboard objectives add coinshop.click minecraft.used:minecraft.carrot_on_a_stick "Coinshop Click"

# Usuwanie starych teamów i tworzenie nowych
team remove coinshop.merchants
team add coinshop.merchants "Coinshop Merchants"
team modify coinshop.merchants color green
team modify coinshop.merchants prefix [{"text":"[💰] ","color":"gold"}]

# Resetowanie tagów
tag @a remove coinshop.gui_open
tag @a remove coinshop.creating_shop

# Resetowanie tagów villager'ów
tag @e[type=villager] remove coinshop.team_set

# Inicjalizacja constansów
scoreboard players set #10 coinshop.temp 10
scoreboard players set #100 coinshop.temp 100