defmodule GimeiExTest do
  use ExUnit.Case

  alias GimeiEx.Name
  alias GimeiEx.Address

  test :name do
    gimei = GimeiEx.name
    assert Name.kanji(gimei) != nil
    assert Name.hiragana(gimei) != nil
    assert Name.katakana(gimei) != nil
    assert gimei.last.kanji != nil
    assert gimei.last.hiragana != nil
    assert gimei.last.katakana != nil
    assert gimei.first.kanji != nil
    assert gimei.first.hiragana != nil
    assert gimei.first.katakana != nil
  end

  test :address do
    address = GimeiEx.address
    assert Address.kanji(address) != nil
    assert Address.hiragana(address) != nil
    assert Address.katakana(address) != nil
    assert address.prefecture.kanji != nil
    assert address.prefecture.hiragana != nil
    assert address.prefecture.katakana != nil
    assert address.city.kanji != nil
    assert address.city.hiragana != nil
    assert address.city.katakana != nil
    assert address.town.kanji != nil
    assert address.town.hiragana != nil
    assert address.town.katakana != nil
  end

  test :prefecture do
    prefecture = GimeiEx.prefecture
    assert prefecture.kanji != nil
    assert prefecture.hiragana != nil
    assert prefecture.katakana != nil
  end

  test :city do
    city = GimeiEx.city
    assert city.kanji != nil
    assert city.hiragana != nil
    assert city.katakana != nil
  end

  test :town do
    town = GimeiEx.town
    assert town.kanji != nil
    assert town.hiragana != nil
    assert town.katakana != nil
  end
end
