# プレイヤー以外からの呼び出しは失敗させる
execute unless entity @s[type=player] run \
  return fail

# 未取得の場合だけ、プロフィールの取得処理を呼ぶ
execute unless entity @s[scores={slim_checker.is_slim=0..1}] run function slim_checker:core/0.start

execute if entity @s[scores={slim_checker.is_slim=1}] run \
  return 1

return fail
