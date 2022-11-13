defmodule Depot.Repo do
  use Ecto.Repo,
    otp_app: :depot,
    adapter: Ecto.Adapters.SQLite3
end
