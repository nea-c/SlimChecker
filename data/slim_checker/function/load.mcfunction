

scoreboard objectives add slim_checker.is_slim dummy
# 旧版で作成された作業用objectiveは削除し、判定用objectiveを共用する
scoreboard objectives remove slim_checker.work
scoreboard objectives add slim_checker.leave_game custom:leave_game

# 比較方式へ移行するときだけ、オフライン分を含む旧キャッシュを無効化する
execute unless data storage slim_checker {cache_version:1b} run scoreboard players reset * slim_checker.is_slim
data modify storage slim_checker cache_version set value 1b

