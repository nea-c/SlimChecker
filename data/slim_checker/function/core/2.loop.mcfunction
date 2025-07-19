

# 先頭の8文字とる
data modify storage slim_checker: _.slim_check.head_str set string storage slim_checker: _.slim_check.str 0 8
# 先頭の4文字消す
data modify storage slim_checker: _.slim_check.str set string storage slim_checker: _.slim_check.str 4


# 検索対象3種 引っかかれば出力を設定して中断
execute if data storage slim_checker: _.slim_check{head_str:"InNsaW0i"} run return run data modify storage slim_checker: _.is_slim set value 1b
execute if data storage slim_checker: _.slim_check{head_str:"c2xpbSIK"} run return run data modify storage slim_checker: _.is_slim set value 1b
execute if data storage slim_checker: _.slim_check{head_str:"ICJzbGlt"} run return run data modify storage slim_checker: _.is_slim set value 1b


# 文字数を測る
execute store result storage slim_checker: _.slim_check.length int 1 run data get storage slim_checker: _.slim_check.str

# lengthが4でなければloop(検知対象が8文字なので、4だったら読む必要がない)
execute unless data storage slim_checker: _.slim_check{length:4} run function slim_checker:core/2.loop