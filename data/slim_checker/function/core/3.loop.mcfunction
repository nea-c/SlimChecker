# 比較する8文字が残っていなければ終了する
execute unless score @s slim_checker.is_slim matches 8.. run \
  return 0

data modify storage slim_checker _.slim_check.head_str set string storage slim_checker _.slim_check.str 0 8

# Base64上の3通りの位置を調べ、見つかった時点で終了する
execute if data storage slim_checker _.slim_check{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _.slim_check{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _.slim_check{head_str:"ICJzbGlt"} run \
  return 1

# Base64の1区画分だけ進め、毎回のNBT文字数取得を省く
data modify storage slim_checker _.slim_check.str set string storage slim_checker _.slim_check.str 4
scoreboard players remove @s slim_checker.is_slim 4
return run function slim_checker:core/3.loop
