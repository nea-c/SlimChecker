# 取得済みなら中断する
execute if entity @s[scores={slim_checker.is_slim=0..1}] run \
  return fail

# 前回の作業データが混ざらないように初期化する
data modify storage slim_checker _ set value {slim_check:{str:""}}
execute at @s run function slim_checker:core/1.at

# 従来と同じ380～520文字目を調べる。短い文字列でも必ず終了する
# 判定が終わるまでは、出力スコアを残り文字数として利用する
execute store result score @s slim_checker.is_slim run data get storage slim_checker _.slim_check.str
execute if score @s slim_checker.is_slim matches 141.. run data modify storage slim_checker _.slim_check.str set string storage slim_checker _.slim_check.str 0 140
execute if score @s slim_checker.is_slim matches 141.. run scoreboard players set @s slim_checker.is_slim 140
execute store result score @s slim_checker.is_slim run function slim_checker:core/3.loop

# 作業用データを片付ける
data remove storage slim_checker _
