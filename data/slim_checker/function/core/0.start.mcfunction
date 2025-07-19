

# 取得済みなら中断
execute if entity @s[scores={slim_checker.is_slim=0..1}] run \
    return fail



# バグると困るので実行者の位置でスキンデータ入手
execute at @s run function slim_checker:core/1.at



# スリムかどうかの出力が入るストレージ
data modify storage slim_checker: _.is_slim set value 0b
# 先頭380文字削除して入手
data modify storage slim_checker: _.slim_check.str set string storage slim_checker: _.profile.properties[0].value 380
# 後ろが長いときに切る (380~520 該当文字が大体ここに入ってくるはずなので)
data modify storage slim_checker: _.slim_check.str set string storage slim_checker: _.slim_check.str 0 140


# 文字数を測る
execute store result storage slim_checker: _.slim_check.length int 1 run data get storage slim_checker: _.slim_check.str
# 0文字以外ならloop開始
execute unless data storage slim_checker: _.slim_check{length:0} run function slim_checker:core/2.loop




# 出力情報をスコアへ記録
execute store result score @s slim_checker.is_slim run data get storage slim_checker: _.is_slim 1


# リセット
data remove storage slim_checker: _
