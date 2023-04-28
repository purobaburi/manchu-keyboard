# ᠮᠠᠨᠵᡠ ᡥᡝᡵᡤᡝᠨ Manju Gisun Keyboard Usage Guide

## Synopsis

- This keyboard only supports MacOS at the moment.
- The keyboard's design roughly follows the Möllendorf transcription schema. Manchu characters whose Möllendorf transcriptions are one letter long and do not use an apostrophe (') can simply be accessed by their normal key on a QWERTY keyboard.
  - Exceptions to this are non-basic letters `ū`, `š`, and `ž`, which can be accessed via the unused letters `v`, `x`, and `z` respectively (note that the first two–`v` and `x`–are inspired by HYPY, Chinese pinyin).
- The non-simple letters can be accessed in more than one way (see below), and the user may choose the method that fits their preferences.
  - Because the `q` key is left unused, it has been converted to a _dead key_, which allows for access of the same special characters found under the SHIFT⇧ key, but without having to press two keys at once (which may be convenient for some users). This feature is optional (see below)
- When CAPSLOCK is pressed, the keyboard produces normal latin text.
- Additionally, this keyboard also contains the mongolian numerals accessed via `ALT+0` though `ALT+9`.

## Setting Up

### MacOS

## Keyboard Configuration Options and Design Philosophy

- Part of the design philosophy of this keyboard is to deviate slightly from Möllendorf and restore the use of pinyin for the Manchu characters which were meant to transliterate Chinese, mostly located under the `q`/SHIFT keys. Of course, this does not override the default Möllendorf keyboard configuration and could provide more convenience for some users. More details in the [Speical Characters](#special-characters).

Non-Manchu Consonants for Transliteration: Möllendorf vs. Pinyin.
| Manchu Script | Möllendorf | Pinyin |
|:-----:|:-----:|:-----:|
| ᡬ | `g'` | `g` |
| ᠺ | `k'` | `k` |
| ᡭ | `h'` | `h` |
| ᡮ | `ts‘` | `c` |
| ᡯ | `dz` | `z` |
| ᡰ | `ž` | `r` |
| ᡱ | `c‘` | `ch` |
| ᡷ | `j` | `zh` |

- The MacOS version has three keyboard options: `Atomic` and `AtomicQ` do not have normal Möllendorf key combinations such as `ts`, `dz`, `cy`, `jy`, and `sy`. These keys can be accessed alternatively. The `AtomicQ` version has the `q` dead key functionality implemented while the `Atomic` keyboard does not. Finally, the `Full` keyboard supports all of the aforementioned Möllendorf key combinations.

## Known Issues

- Font implementations for the Manchu/Mongolian scripts' unicode characters tend to be inconsistent. If this keyboard produces incorrect Manchu orthography, it is most likely the font's compatibility issue. Please refer to the Manchu fonts ([Download][ttf-fonts]) graciously provided by the [Manchu Studies Group][manchu-studies-group]. Listed below are a few frequently-encountered font-related issues:
  - Consonants `b`, `p`, `d`, `t`, `k`, `g`, and `h` do not display correct ligatures/forms when suffixed by certain vowels.
  - At the initial or medial positions, diphthongs formed by the vowels `a`, `e`, `o`, `u` and the vowel `i` do not display the two strokes of the `i` correctly. In such cases, the user has to input, e.g. `aii` instead of `ai`, in order to get the correct word to display; this is incorrect and a discrepancy with the font.

## Special Characters

![special characters table](/assets/input_chart_EN.jpg)

\[1\]: _Escaping Connected Characters_: if you want to write `n` next to `g` without getting the character for `ng`, then add an apostrophe in between like so: `n'g`. Tip: if you want to leave Q-Mode without having to enter something, the apostrophe key works well for that too.
\[2\]: The alt keys, being reserved for entering characters in special occassions, cannot form special characters from multi-character sequences. Currently, it only applies to `⌥t` as `⌥t`+`y` will not get you `tsy` (ᡮᡟ). In the atomic keyboards, please use `Cy` instead (see the [design philosophy statement](#keyboard-configuration-options-and-design-philosophy)).
\[3\]: The _pinyin_ sequences `chi` (ᡱᡳ) and `zhi` (ᡷᡳ) are special. To prevent unexpected sequences, the digraphs `ch` and `zh` will not generate ᡷ and ᡱ, use the other methods instead.
\[4\]:
\[5\]: Special punctuation: the boundary markers ᠇ and ᠊ are not technically part of the Manchu script. However, they serve useful and important purposes in digital Manchu. For example, the Nirugu (᠊) can be used to denote the initial, medial, and final position forms of letters: ᠠ᠈ ᠠ᠊᠈ ᠊ᠠ᠊᠈ ᠊ᠠ᠉
\[6\]: The No-Break Space (NBSP), Narrow No-Break Space (NNBSP), and Zero-Width Junction (ZWJ) are unicode characters serving special functions in many digital scripts. In digital Manchu, the NBSP can be used to ensure that line breaks don't occur between certain words and their suffixes. The NNBSP is often used in front of ᡳ to create the genitive -i ( ᡳ), and it does not work on many fonts. Similarly, the ZWJ is also used to control which form the letters take, but it similarly faces technical/compatibility issues with fonts. The rule of thumb is that the Nirugu is the most reliable connector–its only disadvantage is that it is visible.
\[7\]: The Mongolian Verb Separator (MVB) and Free Variant Selectors (FVS) are non-printing unicode characters that allows a certain form of the letter to be picked arbitrarily. However, they don't work with most fonts. They do work with the font Noto Sans Mongolian (used by Wikipedia) and are hence included on this keyboard for completeness.

<!-- References -->

[manchu-study-group]: https://www.manchustudiesgroup.org/
[ttf-fonts]: https://drive.google.com/file/d/1V8vG2MqvsvZVsrGY1WErma2ksxdfSuwb/view?usp=share_link
