# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :aggregator,
  ecto_repos: [Aggregator.Repo]

# Configures the endpoint
config :aggregator, AggregatorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uFS5qIdVV/QGGHM/huWtIs6iGYZCW5HFQ5sMrK9DZc1kMK6XAMKIk/F+iGiWNy26",
  render_errors: [view: AggregatorWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Aggregator.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
