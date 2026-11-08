

scoreboard objectives add slim_checker.is_slim dummy
scoreboard objectives add slim_checker.work dummy
scoreboard objectives add slim_checker.leave_game custom:leave_game

# 比較方式へ移行するときだけ、オフライン分を含む旧キャッシュを無効化する
execute unless data storage slim_checker {cache_version:1b} run scoreboard players reset * slim_checker.is_slim
data modify storage slim_checker cache_version set value 1b

