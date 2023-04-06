defmodule Cluster do
  use Application


  @moduledoc """
  Documentation for `Cluster`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cluster.hello()
      :world

  """
  def hello do
    IO.puts("hello world going to sleep a second")
    Task.start(fn -> :timer.sleep(1000); IO.puts("done sleeping") end)
    :world
  end

  def start(_type, _args) do
    IO.puts "starting"
    Task.start(fn -> :timer.sleep(10000); IO.puts("done sleeping") end)
  end

end


Cluster.hello
