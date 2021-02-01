##################################
#                                #
#     code by theskyblockman     #
#                                #
##################################

execute as @a[scores={trading_items=1..}] run function villagers:trading_items

execute as @e[type=villager, tag=!new_villager] at @s if entity @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_key":1b}}}] run function villagers:villager_tag
execute as @e[type=villager, tag=new_villager] at @s if entity @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_ai":1b}}}] run function villagers:villager_remove_trades
execute as @e[type=villager] at @s if entity @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_ai":1b}}}] run function villagers:villager_ai
execute as @e[type=villager] at @s if entity @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_silent":1b}}}] run function villagers:villager_silent
execute as @e[type=villager] at @s if entity @e[type=item,distance=..1, nbt={Item:{id:"minecraft:paper",tag:{"new_villager_picker":1b}}}] run function villagers:villager_picker