ExUnit.start

Mix.Task.run "ecto.create", ~w(-r HealthInspector.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r HealthInspector.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(HealthInspector.Repo)

