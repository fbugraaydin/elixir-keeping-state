# Elixir Keeping State with Processes

There are some elixir team members. You can manage the team by using add, remove, list actions.

You have 3 approaches here to make this:

    - Keeping state on your own hands with mail box by using receive/do => ElixirTeamBasic

    - Keeping state on Agent with giving action as a function => ElixirTeamAgent

    - Keeping state on GenServer by implementing call back functions => elixirteam mix project with supervisor

Note: Example commands exist in .ex files or Readme.md files.