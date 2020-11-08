# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :home_bar,
  ecto_repos: [HomeBar.Repo]

# Configures the endpoint
config :home_bar, HomeBarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WUkZHe79zlHCCt10/yZ8Foq/oJX4QfFNuTStZwxz26YxJwycwnIKg6Epjw2Uz76T",
  render_errors: [view: HomeBarWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: HomeBar.PubSub,
  live_view: [signing_salt: "CVI4BR8t"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
