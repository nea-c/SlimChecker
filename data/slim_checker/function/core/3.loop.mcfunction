# 8区画をまとめて確認し、文字列のコピーと再帰の回数を減らす
execute unless score #length slim_checker.work matches 8.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 0 8
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 12.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 4 12
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 16.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 8 16
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 20.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 12 20
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 24.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 16 24
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 28.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 20 28
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 32.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 24 32
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

execute unless score #length slim_checker.work matches 36.. run \
  return 0
data modify storage slim_checker _.head_str set string storage slim_checker _.str 28 36
execute if data storage slim_checker _{head_str:"InNsaW0i"} run \
  return 1
execute if data storage slim_checker _{head_str:"c2xpbSIK"} run \
  return 1
execute if data storage slim_checker _{head_str:"ICJzbGlt"} run \
  return 1

# 先頭32文字を削り、最後に調べた8文字の後半4文字は残す
data modify storage slim_checker _.str set string storage slim_checker _.str 32
scoreboard players remove #length slim_checker.work 32
return run function slim_checker:core/3.loop
