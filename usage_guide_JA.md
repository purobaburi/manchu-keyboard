# ᠮᠠᠨᠵᡠ ᡥᡝᡵᡤᡝᠨ 満州語キーボード使用ご案内

## 初めに

- このキーボード（入力方法）は、今のところ MacOS システム用のみです。
- 一般的にメレンドルフ音韻体系に従うように設計されています。 メレンドルフ音訳でアポストロフィを除いた文字は、QWERTY キーボード上で同じ位置に配置されます。
  - 例外：`ū`は`v`に、`š`は`x`に、`ž`は`z`に置き換えられます。
- その他の文字は、ユーザーの好みに応じて、複数文字の方法で入力することができますので、以下のリストを参照してください。
  - メレンドルフ音訳では `q` 文字を使っていないので、`q` キーは `SHIFT` ⇧ のショートカットに変更されました。 `q`を使うことで、2つのキーを同時に押す必要がなくなります。
- このキーボードでは、キャプスロックモードで英語を普通に入力できます。
- このキーボードにはモンゴル語の数字が追加されており、`ALT+0`から`ALT+9`のキーで使うことができます。

## キーボードの設定

### MacOS

① **インストーラー スクリプト** まず、この入力方法を「このコンピュータの全ユーザーにインストールするか」、「このユーザーだけにインストールするか」を選択します。 この 2つの選択肢は、下部に`wget`または`curl`のダウンロード方法として表示されます。 ターミナルでこに下記のコマンドをコピーペーストをしてください。

**このユーザーだけインストールする**

- `wget`でダウンロード

```bash
wget -qO - https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_current_user.sh | bash
```

- `curl`でダウンロード

```bash
curl -s https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_current_user.sh | bash
```

**このコンピュータの全ユーザーにインストールする**

- `wget`でダウンロード

```bash
wget -qO - https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_all_users.sh | bash
```

- `curl`でダウンロード

```bash
curl -s https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_all_users.sh | bash
```

特定のバージョンをダウンロードするには、上記のシェルココマンドの後に以下のように追加します。

```bash
(インストーラースクリプト ...) | Bash -s "(バージョン)"
```

例えば

```bash
(インストーラースクリプト ...) | Bash -s v0.1.0-alpha
```

また、シェルの環境変数を利用することも可能です。

```bash
export MANJUGISUN_VERSION="v0.1.0-alpha"
```

コマンドサフィックスと環境変数の両方が利用可能な場合、プログラムは優先的にコマンドサフィックスが選択されます。 コマンドサフィックスが選択されます。 どちらも存在しない場合は、最新版をデフォルトでダウンロードすることになります。

② ダウンロードを正常に実行した後、ログアウトして再度ログインしてください。

③ システム設定の「キーボード」→「入力ソース」を選択し、左下の「＋」ボタンを押します。 次に、[使用したい入力方式](#キーボード選択肢とデザイン思想)を選択します（満州語の入力方式は「nco（モンゴル語）」に分類されます）

また、caps lock キーを押したときに、ラテン文字のキーボードに切り替わるように設定できます。

![capslock option](/assets/capslock_option_EN.png)

### アンインストール

入力メソッドのアンインストールは簡単で、2つの方法があります。 一つは、` Library/Keyboard Layouts` (全ユーザー) と `~/Library/Keyboard Layouts` (このユーザーだけ) フォルダから `ManjuGisun.bundle` ファイルを削除する。

二つは、ここで提供されている自動的なアンインストーラプログラム。 以下の中から一つのコマンドを選択し、ターミナルにコピーします。

- `wget`を使用する

```bash
wget -qO - https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_uninstall_all.sh | bash
```

- `curl`を使用する

```bash
curl -s https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_uninstall_all.sh | bash
```

## キーボード選択肢とデザイン思想

- このキーボードのデザイン思想の一部として、メレンドルフからわずかに逸脱して、いくつかの満州文字に中国語の音訳から元のピンインを使用します。もちろん、メレンドルフのデフォルトのキーボード設定は保たれており、`q`と`Shift`のキーのコンビネーションが変更されただけです。さらに、ユーザーによっては、より便利に使えるかもしれません。詳しくは下記の表や[特集文字の入力方法](#特殊文字の入力方法)をご覧ください。

中国語の音を表現する満州文字：メレンドルフ vs. ピンイン
| 満州文字 | メレンドルフ | ピンイン |
|:-----:|:-----:|:-----:|
| ᡬ | `g'` | `g` |
| ᠺ | `k'` | `k` |
| ᡭ | `h'` | `h` |
| ᡮ | `ts‘` | `c` |
| ᡯ | `dz` | `z` |
| ᡰ | `ž` | `r` |
| ᡱ | `c‘` | `ch` |
| ᡷ | `j` | `zh` |

- MacOS の基本的なキーボードには、`Atomic`、`AtomicQ`、`Full`の 3つがあり、いずれも QWERTY キーボードです。
  - `Atomic`と`AtomicQ`はメレンドルフの多文字入力ができないので、ピンインを使う人に適しています。
  - `AtomicQ` は前述の `q` ショートカットを持ちます。
  - `Full`はメレンドルフの多文字入力を含むすべての機能を持ちます。

## 既知の問題

- 満州/モンゴル語のユニコード文字に対するフォントの実装は、矛盾している傾向があります。もし、このキーボードが不正確な満州文字を表記している場合、フォントの問題である可能性が高いです。満州語研究会 [“Manchu Studies Group”][manchu-studies-group] が提供している満州語フォント（[ダウンロード][ttf-fonts]）や Noto Sans Mongolian フォントを参照し、使用してください。以下は、フォントに関するよくある問題：
  - 子音 `b`、`p`、`d`、`t`、`k`、`g`、`h` は、ある母音が接尾辞として付くと正しい合字や字形が表示されない。
  - 母音 `a`, `e`, `o`, `u` と母音 `i` で形成される二重母音は、語頭形や語中形では `i` の二画を正しく表示しません。このような場合、ユーザーは正しい単語を表示させるために、例えば`ai`の代わりに`aii`と入力しなければなりませんが、これはフォントの誤りです。

## 特殊文字の入力方法

![special characters table](/assets/input_chart_JA.jpg)

- \[1\]: n+g (ᠨᡤ) のような特殊な二重文字を解除するには、アポストロフィ (n'g) を使ってください。そうしないと ng (ᠩ) と入力されます。 このキーボードでのアポストロフィはヌル文字です。
- \[2\]: ALT⌥ キーは、単独の文字入力にのみ使用されます。 例： ᡮᡟ は「tsy」や「⌥tY」で入力されますが、「⌥ty」では行けない。
- \[3\]: ピンインの ᡱᡳ「chi」と ᡷᡳ「zhi」は特殊な綴り字で、「ch」と「zh」は ᡱ（⌥c）と ᡷ（⌥j）を一貫性のために表記できません。
- \[4\]:
- \[5\]: 特殊な句読点：この句読点は満州語では使われないが、e-writing では異なる単語をつなぐために使われ、「`᠊`」はそれぞれの文字で任意の形に付けさせます。例えば、 ᠠ「単独形」ᠠ᠊「語頭形」᠊ᠠ᠊「語中形」᠊ᠠ「語末形」。
- \[6\]: No-Break Space（NBSP）、Narrow No-Break Space（NNBSP）、Zero-Width Junction（ZWJ）は、e-writing で文字の形を変更できるユニコード文字です。 例えば、あるフォントでは、ᡳ の前に NNBSP を付けると、ᡴ のように-i の接尾辞が表せます。
- \[7\]: FVS と MVS は、満州文字の異体字を表示するために使用されるユニコード文字。しかし、Noto Sans Mongolian 以外、多くのフォントがこれらの文字に未対応です。

<!-- References -->

[manchu-study-group]: https://www.manchustudiesgroup.org/
[ttf-fonts]: https://drive.google.com/file/d/1V8vG2MqvsvZVsrGY1WErma2ksxdfSuwb/view?usp=share_link
