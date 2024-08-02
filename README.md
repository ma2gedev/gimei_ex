# GimeiEx

[![hex.pm version](https://img.shields.io/hexpm/v/gimei_ex.svg)](https://hex.pm/packages/gimei_ex) [![hex.pm downloads](https://img.shields.io/hexpm/dt/gimei_ex.svg)](https://hex.pm/packages/gimei_ex) [![Build Status](https://travis-ci.org/ma2gedev/gimei_ex.svg?branch=master)](https://travis-ci.org/ma2gedev/gimei_ex)

Elixir port of [willnet/gimei](https://github.com/willnet/gimei)

## Installation

```elixir
# mix.exs
defp deps do
  [
    {:gimei_ex, "~> 1.0.0"},
    {:yamerl, github: "yakaz/yamerl", tag: "v0.3.2-1"}
  ]
end
```

and fetch

```bash
$ mix deps.get
```

## How to use

### 名前をランダムで返す

```iex
iex> gimei = GimeiEx.name
%GimeiEx.Name{first: %GimeiEx.Name.First{hiragana: "さちこ",
  kanji: "佐知子", katakana: "サチコ"},
 last: %GimeiEx.Name.Last{hiragana: "おかざき", kanji: "岡崎",
  katakana: "オカザキ"}}
iex> alias GimeiEx.Name
iex> Name.kanji(gimei)      #=> "岡崎 佐知子"
iex> Name.hiragana(gimei)   #=> "おかざき さちこ"
iex> Name.katakana(gimei)   #=> "オカザキ サチコ"
iex> gimei.last.kanji       #=> "岡崎"
iex> gimei.last.hiragana    #=> "おかざき"
iex> gimei.last.katakana    #=> "オカザキ"
iex> gimei.first.kanji      #=> "佐知子"
iex> gimei.first.hiragana   #=> "さちこ"
iex> gimei.first.katakana   #=> "サチコ"
```

### 住所をランダムで返す

```iex
iex> address = GimeiEx.address
%GimeiEx.Address{city: %GimeiEx.Address.City{hiragana: "くろべし",
  kanji: "黒部市", katakana: "クロベシ"},
 prefecture: %GimeiEx.Address.Prefecture{hiragana: "みえけん",
  kanji: "三重県", katakana: "ミエケン"},
 town: %GimeiEx.Address.Town{hiragana: "かみつしままちごねお",
  kanji: "上対馬町五根緒", katakana: "カミツシママチゴネオ"}}
iex> alias GimeiEx.Address
iex> Address.kanji(address)         #=> "三重県黒部市上対馬町五根緒"
iex> Address.hiragana(address)      #=> "みえけんくろべしかみつしままちごねお"
iex> Address.katakana(address)      #=> "ミエケンクロベシカミツシママチゴネオ"
iex> address.prefecture.kanji       #=> "三重県"
iex> address.prefecture.hiragana    #=> "みえけん"
iex> address.prefecture.katakana    #=> "ミエケン"
iex> address.city.kanji             #=> "黒部市"
iex> address.city.hiragana          #=> "くろべし"
iex> address.city.katakana          #=> "クロベシ"
iex> address.town.kanji             #=> "上対馬町五根緒"
iex> address.town.hiragana          #=> "かみつしままちごねお"
iex> address.town.katakana          #=> "カミツシママチゴネオ"

# 省略形

iex> prefecture = GimeiEx.prefecture
%GimeiEx.Address.Prefecture{hiragana: "おおいたけん", kanji: "大分県",
 katakana: "オオイタケン"}
iex> prefecture.kanji   #=> "大分県"

iex> city = GimeiEx.city
%GimeiEx.Address.City{hiragana: "みずなみし", kanji: "瑞浪市",
 katakana: "ミズナミシ"}
iex> city.hiragana      #=> "みずなみし"

iex> town = GimeiEx.town
%GimeiEx.Address.Town{hiragana: "たらわらまち", kanji: "俵原町",
 katakana: "タラワラマチ"}
iex> town.katakana      #=> "タラワラマチ"
```

## Requirements

[yamerl](https://github.com/yakaz/yamerl)

## LICENSE

MIT

## Special Thanks

[@willnet](https://github.com/willnet)

