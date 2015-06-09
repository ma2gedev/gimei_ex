defmodule GimeiEx do
  :application.start(:yamerl)
  @names Path.expand(Path.join(__DIR__, "../priv/data/names.yml")) |> :yamerl_constr.file |> List.first
  @last_names_count :proplists.get_value('last_name', @names) |> Enum.count

  first_name_map = :proplists.get_value('first_name', @names)
  female_first_names_count = :proplists.get_value('female', first_name_map) |> Enum.count
  male_first_names_count = :proplists.get_value('male', first_name_map) |> Enum.count
  @male_female [{'male', male_first_names_count}, {'female', female_first_names_count}]

  addresses = Path.expand(Path.join(__DIR__, "../priv/data/addresses.yml")) |> :yamerl_constr.file |> List.first
  @addresses :proplists.get_value('addresses', addresses)
  @prefectures_count :proplists.get_value('prefecture', @addresses) |> Enum.count
  @cities_count :proplists.get_value('city', @addresses) |> Enum.count
  @towns_count :proplists.get_value('town', @addresses) |> Enum.count

  alias GimeiEx.Name
  alias GimeiEx.Name.First
  alias GimeiEx.Name.Last
  alias GimeiEx.Address
  alias GimeiEx.Address.Prefecture
  alias GimeiEx.Address.City
  alias GimeiEx.Address.Town

  def name do
    %Name{last: last, first: first}
  end

  defp last do
    [last_kanji, last_hira, last_kana] = :proplists.get_value('last_name', @names)
                                          |> get_random_item(@last_names_count)
    %Last{kanji: last_kanji, hiragana: last_hira, katakana: last_kana}
  end

  defp first do
    {male_or_female, count} = @male_female |> Enum.at(:crypto.rand_uniform(0, 2))
    first_name_map = :proplists.get_value('first_name', @names)
    [first_kanji, first_hira, first_kana] = :proplists.get_value(male_or_female, first_name_map)
                                            |> get_random_item(count)
    %First{kanji: first_kanji, hiragana: first_hira, katakana: first_kana}
  end

  def address do
    %Address{prefecture: prefecture, city: city, town: town}
  end

  def prefecture do
    [p_kanji, p_hira, p_kana] = :proplists.get_value('prefecture', @addresses)
                                 |> get_random_item(@prefectures_count)
    %Prefecture{kanji: p_kanji, hiragana: p_hira, katakana: p_kana}
  end

  def city do
    [c_kanji, c_hira, c_kana] = :proplists.get_value('city', @addresses)
                                 |> get_random_item(@cities_count)
    %City{kanji: c_kanji, hiragana: c_hira, katakana: c_kana}
  end

  def town do
    [t_kanji, t_hira, t_kana] = :proplists.get_value('town', @addresses)
                                 |> get_random_item(@towns_count)
    %Town{kanji: t_kanji, hiragana: t_hira, katakana: t_kana}
  end

  defp get_random_item(list, list_count) do
    list
    |> Enum.at(:crypto.rand_uniform(0, list_count))
    |> Enum.map fn(item) -> List.to_string(item) end
  end
end
