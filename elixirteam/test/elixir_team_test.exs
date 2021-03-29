defmodule ElixirTeamTest do
  use ExUnit.Case
  doctest ElixirTeam

  test "greets the world" do
    assert ElixirTeam.hello() == :world
  end
end
