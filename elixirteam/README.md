It is a mix project to keep state by using GenServer Integrated Supervisor for fault-tolerance.

Commands:

```bash
iex -S mix

{:ok, spid} = ElixirTeam.Supervisor.start_link([])

[{_,pid,_,_}] = Supervisor.which_children(spid)

ElixirTeam.MyGenServer.add(pid,"name1")

ElixirTeam.MyGenServer.remove(pid,"name1")

ElixirTeam.MyGenServer.team(pid)

GenServer.call(pid,:temm) # Got Error and supervisor ups process again.

[{,pid,,_}] = Supervisor.which_children(spid)
```