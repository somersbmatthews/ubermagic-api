defmodule Aggregator.Repo do
  use Ecto.Repo,
    otp_app: :aggregator,
    adapter: Ecto.Adapters.Postgres
end
