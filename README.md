# Computer Craft Tools

Minecraft の MOD Computer Craft の Lua ソース置き場

## ディレクトリ説明

- /docs : ドキュメント、参考サイト置き場
- /lib : 共有ライブラリ置き場
- /usr : ソース置き場。作ったツールとか。

## 使い方

**/lib** と **/usr** のシンボリックリンクを、Minecraftマップデータ内のコンピューターのデータが保存されたディレクトリ張れば、そのままMinecraft内のコンピューターに反映される。

    $ ln -s ./lib ~/Library/Application\ Support/minecraft/saves/MAPNAME/computer/0
    $ ln -s ./usr ~/Library/Application\ Support/minecraft/saves/MAPNAME/computer/0

