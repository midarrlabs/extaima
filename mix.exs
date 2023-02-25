defmodule Extaima.MixProject do
  use Mix.Project

  def project do
    [
      app: :extaima,
      version: "0.3.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: "Simple duration parser - HH:MM:SS, H:MM:SS, MM:SS, M:SS",
      package: [
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/midarrlabs/extaima"}
      ],
      deps: deps()
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
