defmodule Fast64 do
  @moduledoc """
  Documentation for `Fast64`.
  """

  @doc """
  Fast64

  ## Examples

      iex> Fast64.encode64("hello")
      "aGVsbG8="

      iex> Fast64.decode64("aGVsbG8=")
      "hello"

  """

  @compile {:autoload, false}
  @on_load {:load_nif, 0}

  def load_nif do
    path = :filename.join(:code.priv_dir(:fast64), ~c"fast64")
    :ok = :erlang.load_nif(path, 0)
  end

  def decode64(_data), do: exit(:nif_not_loaded)
  def encode64(_data), do: exit(:nif_not_loaded)
end
