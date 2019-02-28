# VimSettingModel

自分のneovim環境を公開します.
LSPを使った高機能なplugin活用の例となれば良いと思います.

NOTE: installerはテスト段階です.使用する際はご注意を

# Requirement
- vim-plug
- LanguageServers(rls,fortls,pyls,[jdt-language-server](https://download.eclipse.org/jdtls/snapshots/?d))
- `$JDT_LANGUAGE_SERVER_DIR`が上記のeclipseのホームページからダウンロードしたファイルを展開したフォルダーにセットされていること.
- CicaフォントなどのNerdtreeフォント
# Feature
- LanguageClientとdeopleteとneosnippetによる強力な補完&コードチェック.
- Rust,python,fortranに対する設定はしてあります.(fortranはCodeCheckerが不完全)
- nerdtreeとdeviconsによるきれいなUI

# Goal
多言語対応で且つIDEのような使い心地のテキストエディター

# Future plan
- JavaとC/C++,CUDAに対応.
- tagbarに相当するものの実装
- installerの実装.
