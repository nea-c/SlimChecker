# 取得時と同じ値なら、前回の判定結果をそのまま返す
execute if entity @s[type=player, scores={slim_checker.is_slim=1, slim_checker.leave_game=1}] run \
  return 1
execute if entity @s[type=player, scores={slim_checker.is_slim=0, slim_checker.leave_game=0}] run \
  return fail

# プレイヤー以外からの呼び出しは失敗させる
execute unless entity @s[type=player] run \
  return fail

# 未取得または退出によって値が変わっていれば、プロフィールを取得し直す
function slim_checker:core/0.start
execute if entity @s[scores={slim_checker.is_slim=1}] run \
  return 1

return fail
