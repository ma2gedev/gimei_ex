defmodule GimeiEx.Name do
  defstruct first: %{}, last: %{}

  defmodule First do
    defstruct kanji: nil, hiragana: nil, katakana: nil
  end

  defmodule Last do
    defstruct kanji: nil, hiragana: nil, katakana: nil
  end

  def kanji(name) do
    "#{name.last.kanji} #{name.first.kanji}"
  end
  def hiragana(name) do
    "#{name.last.hiragana} #{name.first.hiragana}"
  end
  def katakana(name) do
    "#{name.last.katakana} #{name.first.katakana}"
  end
end
