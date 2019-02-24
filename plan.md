# 計画

## ビジュアル
### カラースキーム
やっぱりAtomでしょ
repo='gosukiwi/vim-atom-dark'
### ステータスバー
lightlineに
### ファイラー
~~nerdtree??~~
~~Defx と Defx icons が有望??~~

やっぱりNerdTreeに.deviconはもちろん使用
git-pluginで補強

## コーディング補助

すべてlspプロトコルに従ったものを使う
lsp clientとして[LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim)を使用する. deopleteと統合できるようだ.
htmlも補助できるようにしたいなぁ...
いろいろぶっこむ...
言語ごとにtomlを分けて管理する.
snippetはneosnippetに(deoppetいつ完成するのかなぁ)

## カッコ補完
何も考えてない...


## 言語ごとの設定
### Rust
rls
設定したが快調
aleよりもよい.
デバッガどうするか問題

おお [nvim-gdb](https://github.com/sakhnik/nvim-gdb)が良さそうだ

### python
pyls
### fortran
fortran-language-server
[ここ](https://github.com/hansec/fortran-language-server/wiki/Using-forts-with-vim)に設定方法が書いてあった.
ホントにこれだけでいいのか???
### C/C++

### Java
eclipseがなんか出してるっぽい

## Gitとの連携
gitgutterとfugitiveにした.

## その他便利ツール

