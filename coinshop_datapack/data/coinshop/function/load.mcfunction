# load.mcfunction
# Coinshop Datapack v1.1 - Initialization
tellraw @a [{"text":"[LOADED] ","color":"gold"},{"text":"Coinshop Datapack loaded!","color":"green"}]
tellraw @a [{"text":"Available commands:","color":"yellow"}]
tellraw @a [{"text":"• /function coinshop:give_coins","color":"aqua"},{"text":" - ","color":"gray"},{"text":"Get test coins","color":"gray"}]
tellraw @a [{"text":"• /function coinshop:shop/open_gui","color":"aqua"},{"text":" - ","color":"gray"},{"text":"Open shop creator","color":"gray"}]

# Create scoreboards
scoreboard objectives add coinshop.temp dummy "Coinshop Temp"
scoreboard objectives add coinshop.gui dummy "Coinshop GUI"
scoreboard objectives add coinshop.timer dummy "Coinshop Timer"
scoreboard objectives add coinshop.click minecraft.used:minecraft.carrot_on_a_stick "Coinshop Click"

# Remove old teams and create new ones
team remove coinshop.merchants
team add coinshop.merchants "Coinshop Merchants"
team modify coinshop.merchants color green
team modify coinshop.merchants prefix [{"text":"[MERCHANT] ","color":"gold"}]

# Reset tags
tag @a remove coinshop.gui_open
tag @a remove coinshop.creating_shop

# Reset villager tags
tag @e[type=villager] remove coinshop.team_set

# Initialize constants
scoreboard players set #10 coinshop.temp 10
scoreboard players set #100 coinshop.temp 100
