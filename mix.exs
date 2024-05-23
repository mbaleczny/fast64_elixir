defmodule Fast64.MixProject do
  use Mix.Project

  @version "0.1.3"

  def project do
    [
      app: :fast64,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      compilers: [:elixir_make] ++ Mix.compilers(),
      make_targets: ["all"],
      make_clean: ["clean"],
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp description() do
    "High performance Elixir base 64 encoder/decoder in C."
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
      {:elixir_make, "~> 0.7", runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Daniel Bustamante Ospina"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/bancolombia/fast64_elixir"},
      files: ["lib", "priv/.gitignore", "mix.exs", "README.md", "src", "Makefile"]
    ]
  end
end
