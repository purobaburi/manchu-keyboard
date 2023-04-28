# ᠮᠠᠨᠵᡠ ᡥᡝᡵᡤᡝᠨ 滿語輸入法使用指南

## 簡介

- 此輸入法暫時僅用於 MacOS 系統。
- 設計大致按照穆麟德（Möllendorf）音譯系統。所有穆麟德音譯不用撇號（‘）單字符的字母都將處於 QWERTY 鍵盤上的同樣位置。
  - 例外：`ū`改寫為`v`、`š`改為`x`、並且`ž`改為`z`。
- 其他字母各有不止一種拼法，使用方法取決於用戶的偏好，請參考下方表格。
  - 因為穆麟德音譯不用`q`字母，`q`鍵改為`SHIFT`⇧ 的快捷鍵。按下`q`之後，可以直接去按 ⇧ 的組合，這樣不必同時按兩個鍵。
- 此輸入法可在 CAPSLOCK 模式中正常輸入英文字母，輸入法與系統默認的英文格式一致。
- 此輸入法額外提供蒙古文數字，可通過`ALT+0`至`ALT+9`鍵使用。

## 下載/安裝

### MacOS

① **下載程序。** 首先選擇是否要為此電腦上所有的用戶安裝此輸入法還是僅為此用戶安裝。兩個選項在下方分別有使用`wget`或`curl`的下載方式。只需在 Terminal 中拷貝一行。

**僅為此用戶安裝輸入法**

- 用`wget`下載

```bash
wget -qO - https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_current_user.sh | bash
```

- 用`curl`下載

```bash
curl -s https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_current_user.sh | bash
```

**為所有用戶安裝輸入法**（安裝後需從設置中選擇啟用該輸入法才能使用）

- 用`wget`下載

```bash
wget -qO - https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_all_users.sh | bash
```

- 用`curl`下載

```bash
curl -s https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_install_all_users.sh | bash
```

若想下載具體版本，如`v0.1.0-alpha`，可在上方的 shell 命令後加`-s v0.1.0-alpha`。

```bash
(Installer Script ...) | Bash -s "v0.1.0-alpha"
```

也可以用 shell 的環境變量。

```bash
export MANJUGISUN_VERSION="v0.1.0-alpha"
```

若命令後綴和環境變量都有，該程序會選擇命令後綴。若都沒有，該程序會默認下載最新版本。

② 成功運行下載程序後，需註銷並重新登錄。

③ 在系統設置中選擇 Keyboard > Input Sources 之後按左下方的“+”鍵。然後，請[選擇](#輸入法種類設計理念))您想使用的輸入法（滿語輸入法歸類在“nco (Mongolian)"–希伯語/蒙古文–的類別），並且可在選完鍵盤後選擇使用“CAPS LOCKS”轉換回拉丁字母（列如英語）的輸入法。<!-- 最後那一點不知道該怎麼說說的清楚 -->

![capslock option](/assets/capslock_option_EN.png)

### 卸載

卸載輸入法很容易，有兩種方法。一，從`Library/Keyboard Layouts`（全用戶）和`~/Library/Keyboard Layouts`（僅為此用戶）文件夾中將`ManjuGisun.bundle`文件刪除。

二，可以用這裡提供的卸載程序自動卸載。選擇並將下面的命令拷貝入 Terminal。

- 使用`wget`程序

```bash
wget -qO - https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_uninstall_all.sh | bash
```

- 使用`curl`程序

```bash
curl -s https://raw.githubusercontent.com/purobaburi/manchu-keyboard/main/macos_uninstall_all.sh | bash
```

## 輸入法種類·設計理念

- 此輸入法的設計理念中考慮了用來音譯漢語的滿語借詞字母：對習慣漢語拼音的用戶，用同樣的拼音字符或許比用穆麟德的多字符拼法更便捷。因此，輸入法中用 SHIFT⇧ 和`q`快捷鍵的組合可參照該字母用來音譯的漢語拼音字符。詳情請參考如下表格和[特殊字符的輸入法](#特殊字符輸入法)。

附：滿語借詞字母：穆麟德和漢語拼音對比
| 滿語字符 | 穆麟德 | 漢語拼音 |
|:-----:|:-----:|:-----:|
| ᡬ | `g'` | `g` |
| ᠺ | `k'` | `k` |
| ᡭ | `h'` | `h` |
| ᡮ | `ts‘` | `c` |
| ᡯ | `dz` | `z` |
| ᡰ | `ž` | `r` |
| ᡱ | `c‘` | `ch` |
| ᡷ | `j` | `zh` |

- MacOS 的基輸入法有三種：`Atomic`、`AtomicQ`、和`Full`，均為 QWERTY 鍵盤。前兩種不用任何多字符輸入，其中第一種也不用`q`快捷鍵。這兩種輸入法可能更適合使用漢語拼音的用戶。最後一種輸入法有全部功能。

## 注意事項

- Unicode 滿語的字體不太統一，若打出來的字符有錯誤，大概率是因為字體的兼容性有問題。請參考 [Manchu Studies Group][manchu-studies-group] 提供的滿語字體（[下載連接][ttf-fonts]）。除此以外，Noto Sans Mongolian 是一個在互聯網上用的較多的字體。下面列舉了錯誤字體的常見問題。
  - `b`，`p`，`d`，`t`，`k`，`g`，以及`h`聲母後配對有些韻母時不會正確變形。
  - 在字首或字中位置時，`a`，`e`，`o`，和`u`韻母後加`i`應該有兩條捺。然而，有些字體需要用戶輸入（列：`aii`）才能得到正確的顯示。這是錯誤的。

## 特殊字符輸入法

![special characters table](/assets/input_chart_ZH.jpg)

- \[1\]: 若要斷開特殊雙字符，比如 n+g（ᠨᡤ），需使用撇號（n’g）進行轉譯，否則會打出 ng（ᠩ）。此鍵盤中的撇號是空字符。
- \[2\]: ALT⌥ 鍵僅用於字符的單獨輸入。例：ᡮᡟ 可以“tsy”或者“⌥t Y“進行拼寫，但不可以“⌥t y”。
- \[3\]: 漢語拼音拼法“chi”和“zhi”為特例。ch 和 zh 打不出來 ⌥c（ᡱ）和 ⌥j（ᡷ）以免創造意想不到的特定字符串。
- \[4\]:
- \[5\]: 特殊標點符號：此標點符號不在滿文中使用，但是在電子書寫中連結不同的字並“`᠊`”可將單獨字母放入任意形式：ᠠ（獨立）ᠠ᠊（詞首）᠊ᠠ᠊（詞中）᠊ᠠ（詞尾）。
- \[6\]: No-Break Space (NBSP)，Narrow No-Break Space (NNBSP)，以及 Zero-Width Junction (ZWJ) 可以改變電腦上滿語字體的顯示方式。比如，在有些兼容的字體中，ᡳ 前面加上 NNBSP 可以做出長得像 ᡴ 的 -i 詞綴形。
- \[7\]: FVS1 至 4 和 MVS 特殊字符可在少數兼容字體中改變任意字母單獨的體現形式。兼容字體例如 Noto Sans Mongolian。

<!-- References -->

[manchu-studies-group]: https://www.manchustudiesgroup.org/
[ttf-fonts]: https://drive.google.com/file/d/1V8vG2MqvsvZVsrGY1WErma2ksxdfSuwb/view?usp=share_link
