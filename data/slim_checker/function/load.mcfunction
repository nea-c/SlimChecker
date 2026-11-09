scoreboard objectives add slim_checker.is_slim dummy
scoreboard objectives add slim_checker.leave_game custom:leave_game

# r1からの更新時だけ、オフライン分を含む旧キャッシュを消す
execute unless data storage slim_checker {cache_version:1b} run scoreboard players reset * slim_checker.is_slim
data modify storage slim_checker cache_version set value 1b
