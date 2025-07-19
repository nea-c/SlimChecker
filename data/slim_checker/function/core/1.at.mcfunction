# スキンデータ入手
summon item_display ~ ~ ~ {Tags:["ini"]}
loot replace entity @e[type=item_display,tag=ini,distance=..0.01,limit=1] container.0 loot {"pools": [{"rolls": 1,"entries": [{"type": "item","name": "player_head","functions": [{"function": "fill_player_head","entity": "this"}]}]}]}
data modify storage slim_checker: _.profile set from entity @e[type=item_display,tag=ini,distance=..0.01,limit=1] item.components."minecraft:profile"
kill @e[type=item_display,tag=ini,distance=..0.01,limit=1]
