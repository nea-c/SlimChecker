# 必要な文字列だけを一度取得し、生成したエンティティを同じtick内に削除する
data modify storage slim_checker _.slim_check.str set string entity @s item.components."minecraft:profile".properties[{name:"textures"}].value 380
kill @s
