defmodule ElixirTeamAgent do
  use Agent

  def start_link do
    Agent.start_link(fn -> [] end, name: __MODULE__)
  end

  def add(agent, name) do
    Agent.update(agent, fn list -> list ++ [name] end)
  end

  def remove(agent, name) do
    Agent.update(agent, fn list -> list |> Enum.reject(fn x -> x == name end) end)
  end

  def team(agent) do
    Agent.get(agent, fn list -> list end)
  end
end

# {:ok, pid} = ElixirTeamAgent.start_link
# ElixirTeamAgent.add(pid,"name1")
# ElixirTeamAgent.remove(pid,"name")
# ElixirTeamAgent.team(pid)
