defmodule ExAzure.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_azure,
      version: "0.1.2",
      elixir: "~> 1.2 or ~> 1.3",
      description: "Azure wrapper for Elixir using :erlazure",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:erlazure], mod: {ExAzure, []}]
  end

  defp deps do
    [
      {:erlazure, git: "https://github.com/dkataskin/erlazure.git"},
      {:ex_doc, "~> 0.27", only: [:dev, :test]},
      {:earmark, "~> 1.4.39", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Gullit Miranda <gullitmiranda@gmail.com>"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/gullitmiranda/ex_azure",
        "Docs" => "https://hexdocs.pm/ex_azure"
      }
    ]
  end
end
