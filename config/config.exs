# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :percy_test,
  ecto_repos: [PercyTest.Repo]

# Configures the endpoint
config :percy_test, PercyTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JjHMjl2AAwtdWAaNAR/dmNjBvllLMkpZU1TPXKLWDcWhXp94jIZ9iMIWE55iaaYm",
  render_errors: [view: PercyTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PercyTest.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
