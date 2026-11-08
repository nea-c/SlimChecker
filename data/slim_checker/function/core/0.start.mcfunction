# 前回の作業データが混ざらないように初期化する
data modify storage slim_checker _ set value {slim_check:{str:""}}
execute at @s run function slim_checker:core/1.at

# 従来と同じ380～520文字目を調べる。短い文字列でも必ず終了する
# 出力スコアと区別し、作業用の仮想スコアホルダーで残り文字数を管理する
execute store result score #length slim_checker.work run data get storage slim_checker _.slim_check.str
execute if score #length slim_checker.work matches 141.. run data modify storage slim_checker _.slim_check.str set string storage slim_checker _.slim_check.str 0 140
execute if score #length slim_checker.work matches 141.. run scoreboard players set #length slim_checker.work 140
execute store result score @s slim_checker.is_slim run function slim_checker:core/3.loop

# 作業用データを片付ける
data remove storage slim_checker _
scoreboard players reset #length slim_checker.work
