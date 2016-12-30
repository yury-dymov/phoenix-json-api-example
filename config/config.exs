# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_json_api_example,
  ecto_repos: [PhoenixJsonApiExample.Repo]

# Configures the endpoint
config :phoenix_json_api_example, PhoenixJsonApiExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dFgZHeH2gNA6aH25gxkzG82gH3cVIdUs+N3azDmfMtz+oqye2+h66sSBn5dLJoST",
  render_errors: [view: PhoenixJsonApiExample.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixJsonApiExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
