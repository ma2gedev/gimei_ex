defmodule GimeiEx.Address do
  defstruct prefecture: %{}, city: %{}, town: %{}

  defmodule Prefecture do
    defstruct kanji: nil, hiragana: nil, katakana: nil
  end

  defmodule City do
    defstruct kanji: nil, hiragana: nil, katakana: nil
  end

  defmodule Town do
    defstruct kanji: nil, hiragana: nil, katakana: nil
  end

  def kanji(address) do
    "#{address.prefecture.kanji}#{address.city.kanji}#{address.town.kanji}"
  end
  def hiragana(address) do
    "#{address.prefecture.hiragana}#{address.city.hiragana}#{address.town.hiragana}"
  end
  def katakana(address) do
    "#{address.prefecture.katakana}#{address.city.katakana}#{address.town.katakana}"
  end
end
