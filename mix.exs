defmodule GimeiEx.Mixfile do
  use Mix.Project

  def project do
    [app: :gimei_ex,
     version: "1.0.0",
     elixir: "~> 1.0",
     description: "Elixir port of gimei library",
     package: [
       contributors: ["Takayuki Matsubara"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/ma2gedev/gimei_ex"}
     ],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:yamerl, github: "yakaz/yamerl", tag: "v0.3.2-1"}]
  end
end
