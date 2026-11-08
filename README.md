# SlimChecker

適応されたスキンがスリムかどうかチェックするライブラリデータパック。

Minecraft datapack to check if the applied skin is slim.

## 最新

r2

## 対応バージョン

MinecraftJE 26.3


## 使用方法

判定対象のプレイヤーを実行者にして、以下のように実行。
```mcfunction
## 例
execute if function #slim_checker: run say My skin model is 'Slim'
execute unless function #slim_checker: run say My skin model is 'Wide'
```

## 協力

[@CIkakan](https://github.com/CIkakan)


## ライセンス

[Apache 2.0 Licence](https://github.com/nea-c/SlimChecker?tab=Apache-2.0-1-ov-file#readme)に基づく。


## 更新履歴

* r2
  * MinecraftJE 26.3に対応
  * 軽量化
* r1
  * 初版
