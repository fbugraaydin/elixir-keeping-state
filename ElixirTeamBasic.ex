defmodule ElixirTeamBasic do

  def start_link do
    spawn_link(__MODULE__, :loop, [[]])
  end

  def loop(state) do
    receive do
      {:add, name} ->
        new_state = state ++ [name]
        loop(new_state)

      {:remove, name} ->
        new_state = Enum.reject(state, fn x -> x == name end)
        loop(new_state)

      {:team, pid} ->
        send(pid, {:ok, state})
        loop(state)
    end

  end

end

# pid = TeamBasic.start_link
# send(pid, {:add, "name1"})
# send(pid, {:remove,"name1"})
# send(pid, {:team, self()})
# flush()
