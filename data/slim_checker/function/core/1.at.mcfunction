# プレイヤーを実行者にしたまま、ヘッドにプロフィールを設定する
summon item_display ~ ~ ~ {Tags:["slim_checker.temp"]}
loot replace entity @e[type=item_display, tag=slim_checker.temp, distance=..0.01, limit=1] container.0 loot {"pools": [{"rolls": 1, "entries": [{"type": "item", "name": "player_head", "modifier": {"type": "fill_player_head", "entity": "this"}}]}]}

# 一度選択した対象を、そのまま読み取りと削除の両方に使う
execute as @e[type=item_display, tag=slim_checker.temp, distance=..0.01, limit=1] run function slim_checker:core/2.read
