defmodule GimeiExNameTest do
  use ExUnit.Case

  alias GimeiEx.Name
  alias GimeiEx.Name.First
  alias GimeiEx.Name.Last

  setup do
    {:ok, gimei: %Name{
        first: %First{kanji: "f_kanji", hiragana: "f_hira", katakana: "f_kana"},
        last: %Last{kanji: "l_kanji", hiragana: "l_hira", katakana: "l_kana"}}}
  end

  test :kanji, context do
    assert "l_kanji f_kanji" == Name.kanji(context[:gimei])
  end
  test :last_kanji, context do
    assert "l_kanji" == context[:gimei].last.kanji
  end
  test :first_kanji, context do
    assert "f_kanji" == context[:gimei].first.kanji
  end
  test :hiragana, context do
    assert "l_hira f_hira" == Name.hiragana(context[:gimei])
  end
  test :last_hiragana, context do
    assert "l_hira" == context[:gimei].last.hiragana
  end
  test :first_hiragana, context do
    assert "f_hira" == context[:gimei].first.hiragana
  end
  test :katakana, context do
    assert "l_kana f_kana" == Name.katakana(context[:gimei])
  end
  test :last_katakana, context do
    assert "l_kana" == context[:gimei].last.katakana
  end
  test :first_katakana, context do
    assert "f_kana" == context[:gimei].first.katakana
  end
end
