# Sprawdzanie GUI dla graczy
execute as @a[tag=coinshop.gui_open] at @s run function coinshop:shop/gui_tick

# Timer dla GUI
execute as @a[scores={coinshop.timer=1..}] run scoreboard players remove @s coinshop.timer 1
execute as @a[scores={coinshop.timer=0}] run function coinshop:shop/close_gui

# Sprawdzanie kliknięć - NAJPIERW SPRAWDŹ, POTEM RESETUJ
execute as @a[scores={coinshop.click=1..}] at @s run function coinshop:shop/handle_click
execute as @a[scores={coinshop.click=1..}] run scoreboard players reset @s coinshop.click

# Czyszczenie starych skrzyń
execute as @e[type=chest_minecart,tag=!coinshop.gui] if entity @s[tag=!coinshop.gui] run kill @s

# Dodawanie nowych villager'ów do teamu
execute as @e[type=villager,tag=coinshop.merchant,tag=!coinshop.team_set] run team join coinshop.merchants @s
execute as @e[type=villager,tag=coinshop.merchant,tag=!coinshop.team_set] run tag @s add coinshop.team_set

# Zabezpieczenie villager'ów przed despawn'em
execute as @e[type=villager,tag=coinshop.merchant] run data merge entity @s {PersistenceRequired:1b}