
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{Type:"Rain"}, Count:1b}}] at @s unless score Weather_dqkndjiseqbfij Weather matches 10 if block ~ ~-0.01 ~ minecraft:lodestone run tag @s add used
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{Type:"Rain"}, Count:1b}}, tag=used] at @s run scoreboard players set Weather_dqkndjiseqbfij Weather 10

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{Type:"Thunder"}, Count:1b}}] at @s unless score Weather_dqkndjiseqbfij Weather matches 20 if block ~ ~-0.01 ~ minecraft:lodestone run tag @s add used
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{Type:"Thunder"}, Count:1b}}, tag=used] at @s run scoreboard players set Weather_dqkndjiseqbfij Weather 20

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{Type:"Clear"}, Count:1b}}] at @s unless score Weather_dqkndjiseqbfij Weather matches 30 if block ~ ~-0.01 ~ minecraft:lodestone run tag @s add used
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{Type:"Clear"}, Count:1b}}, tag=used] at @s run scoreboard players set Weather_dqkndjiseqbfij Weather 30

execute as @e[tag=used] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.4 15 force @a
execute as @e[tag=used] at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 0.8 1 0
execute as @e[tag=used] if score Weather_dqkndjiseqbfij Weather matches 10 run tellraw @a {"text":"[Weather Control] Rain is beginning"}
execute as @e[tag=used] if score Weather_dqkndjiseqbfij Weather matches 20 run tellraw @a {"text":"[Weather Control] Thunderstorm is beginning"}
execute as @e[tag=used] if score Weather_dqkndjiseqbfij Weather matches 30 run tellraw @a {"text":"[Weather Control] Weather will be clear"}
execute as @e[tag=used] run kill @s

execute as @e[type=minecraft:potion,nbt={Item:{tag:{Potion:"minecraft:water"}}}] at @s if block ~ ~-0.8 ~ minecraft:lodestone run scoreboard players set Weather_dqkndjiseqbfij Weather -10

execute if score Weather_dqkndjiseqbfij Weather matches -10 run weather clear 1d
execute if score Weather_dqkndjiseqbfij Weather matches -10 run tellraw @a {"text":"[Weather Control] Weather is now normal"}
execute if score Weather_dqkndjiseqbfij Weather matches -10 run scoreboard players set Weather_dqkndjiseqbfij Weather -50

execute if score Weather_dqkndjiseqbfij Weather matches 10 run weather rain 999999d
execute if score Weather_dqkndjiseqbfij Weather matches 20 run weather thunder 999999d
execute if score Weather_dqkndjiseqbfij Weather matches 30 run weather clear 999999d


execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star"}}] at @s if block ~ ~-0.5 ~ minecraft:crafting_table if entity @e[] run scoreboard players set Weather_dqkndjiseqbfij Weather 2

# Known bug: if you place multiple single nether_star (not stacked) on the crafting table with 1 additional item, you get multiple Weather star
# If you put multtiple additionnal item + 1 nether star you get 1 Weather star but everything is consummed
# If you put stacked Weather stars on lodestone nothing appen
# dropping multiple stars from different type can lead to a consumption of all stars

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"{\"text\":\"Weather\"}"}}, Count:1b}}] at @s if block ~ ~-0.5 ~ minecraft:crafting_table if entity @e[distance=..1,nbt={Item:{id:"minecraft:blaze_powder", Count:1b}}] run tag @s add clear
execute as @e[tag=clear] at @s run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:nether_star", Count:1, tag:{Type:"Clear", display:{Name:"{\"text\":\"Weather Star Clear\"}",Lore:["\"\\u00A7dDrop this item on a lodestone to make weather clear\""]},Enchantments:[{id:"fire_protection",lvl:1}]}}, PickupDelay:10s}
execute as @e[tag=clear] at @s run kill @e[distance=..1,nbt={Item:{id:"minecraft:blaze_powder"}}, limit=1]
execute as @e[tag=clear] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.4 15 force @a
execute as @e[tag=clear] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.8 0
execute as @e[tag=clear] at @s run kill @s

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star", tag:{display:{Name:"{\"text\":\"Weather\"}"}}, Count:1b}}] at @s if block ~ ~-0.5 ~ minecraft:crafting_table if entity @e[distance=..1,nbt={Item:{id:"minecraft:lingering_potion", Count:1b}}] run tag @s add rain
execute as @e[tag=rain] at @s run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:nether_star", Count:1, tag:{Type:"Rain", display:{Name:"{\"text\":\"Weather Star Rain\"}",Lore:["\"\\u00A7dDrop this item on a lodestone to cast the rain\""]},Enchantments:[{id:"aqua_affinity",lvl:1}]}}, PickupDelay:10s}
execute as @e[tag=rain] at @s run kill @e[distance=..1,nbt={Item:{id:"minecraft:lingering_potion"}}, limit=1]
execute as @e[tag=rain] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.4 15 force @a
execute as @e[tag=rain] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.8 0
execute as @e[tag=rain] at @s run kill @s

execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:nether_star", tag:{display:{Name:"{\"text\":\"Weather\"}"}}, Count:1b}}] at @s if block ~ ~-0.5 ~ minecraft:crafting_table if entity @e[distance=..1,nbt={Item:{id:"minecraft:amethyst_shard", Count:1b}}] run tag @s add thunder
execute as @e[tag=thunder] at @s run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:nether_star", Count:1, tag:{Type:"Thunder", display:{Name:"{\"text\":\"Weather Star Thunder\"}",Lore:["\"\\u00A7dDrop this item on a lodestone to cast a thunderstorm\""]},Enchantments:[{id:"channeling",lvl:1}]}}, PickupDelay:10s}
execute as @e[tag=thunder] at @s run kill @e[distance=..1,nbt={Item:{id:"minecraft:amethyst_shard"}}, limit=1]
execute as @e[tag=thunder] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.4 15 force @a
execute as @e[tag=thunder] at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.8 0
execute as @e[tag=thunder] at @s run kill @s



scoreboard players enable @a w_weather
execute as @a if score @s w_weather matches 1.. if score Weather_dqkndjiseqbfij Weather matches 10 run tellraw @s {"text":"[Weather control] It's currently raining"}
execute as @a if score @s w_weather matches 1.. if score Weather_dqkndjiseqbfij Weather matches 20 run tellraw @s {"text":"[Weather control] It's currently thunder"}
execute as @a if score @s w_weather matches 1.. if score Weather_dqkndjiseqbfij Weather matches 30 run tellraw @s {"text":"[Weather control] It's currently clear"}
execute as @a if score @s w_weather matches 1.. if score Weather_dqkndjiseqbfij Weather matches -50 run tellraw @s {"text":"[Weather control] The weather is normal"}
scoreboard players set @a w_weather 0
scoreboard players enable @a w_weather