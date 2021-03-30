defmodule ElixirTeam.MyGenServer do
  use GenServer
  import Logger

  # Client APIs

  def start_link(_opts) do
    info "MyGenServer is up and running"
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def add(pid,name) do
    GenServer.cast(pid, {:add, name})
  end

  def remove(pid,name) do
    GenServer.cast(pid, {:remove, name})
  end

  def team(pid) do
    GenServer.call(pid, :team)
  end

  # Server APIs

  @impl true
  def init(:ok) do
    {:ok, []}
  end

  @impl true
  def handle_cast({:add, name}, state) do
    new_state = state ++ [name]
    {:noreply, new_state}
  end

  @impl true
  def handle_cast({:remove, name}, state) do
    new_state  = Enum.reject(state, fn x -> x == name end)
    {:noreply, new_state}
  end

  @impl true
  def handle_call(:team, _from, state) do
    {:reply, state, state}
  end

end
