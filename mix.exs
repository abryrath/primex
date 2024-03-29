defmodule Primex.MixProject do
  use Mix.Project

  def project do
    [
      app: :primex,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "Sieve of Eratosthenes implementation for Elixir",
      source_url: "https://github.com/abryrath/primex"
    ]
  end

  def package do
    [
      maintainers: ["Abry Rath"],
      licenses: ["MIT"],
      links: %{
        "github" => "https://github.com/abryrath/primex"
      }
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, "~> 1.0", only: :dev},
      {:benchee_html, "~> 1.0", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
