# type = tick, id = datameuh:regeneration_spell/tick

execute as @a[limit=1,nbt={Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},scores={detect11=0,cooldownlvl4=0},predicate=datameuh:sneak] if entity @s at @s run function datameuh:regeneration_spell/summon
execute as @a[limit=1,nbt=!{Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},scores={detect11=1..}] if entity @s at @s run function datameuh:regeneration_spell/kill
execute as @a[predicate=!datameuh:sneak,limit=1,nbt={Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},scores={detect11=1..}] run function datameuh:regeneration_spell/kill
execute as @a[predicate=!datameuh:sneak,limit=1,scores={detect11=1..}] if entity @s at @s run function datameuh:regeneration_spell/kill 
execute as @e[scores={detect10=1..},nbt={Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},predicate=datameuh:sneak] if entity @s at @s run function datameuh:regeneration_spell/reset
execute at @a[scores={detect11=1..,cooldownlvl4=0},limit=1,nbt={Inventory:[{Slot: -106b, tag:{spell:"regeneration"}}]},predicate=datameuh:sneak] unless entity @e[tag=pnj4,distance=..5] run summon minecraft:villager ~ ~4 ~ {Tags:["pnj4"],Profession:0,Career:1,CareerLevel:42,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockback_resistance",Base:"1f"},{Name:"generic.movement_speed",Base:"0f"},{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[]},ActiveEffects:[{Id:14,Amplifier:200,Duration:200000000,ShowParticles:0b}]}
execute at @e[tag=pnj4] at @a[sort=nearest,scores={detect11=1..}] run tp @e[type=villager,tag=pnj4] ~ ~1 ~
team join collision @e[tag=pnj4]
execute as @a[scores={cooldownlvl4=1..10},predicate=datameuh:sneak] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"score":{"name":"@s","objective":"cooldownlvl4"},"color": "red"}]
execute as @a[scores={cooldownlvl4=0},predicate=datameuh:sneak] run title @s actionbar [{"text": "Temps de recharge : ","color": "green"},{"text": "Prêt","color": "red"}]

scoreboard players set @a[scores={detect11=1..},predicate=datameuh:sneak] detect1 0
scoreboard players set @a[scores={detect11=1..},predicate=datameuh:sneak] detect4 0
scoreboard players set @a[scores={detect11=1..},predicate=datameuh:sneak] detect6 0
scoreboard players set @a[scores={detect11=1..},predicate=!datameuh:sneak] detect10 0