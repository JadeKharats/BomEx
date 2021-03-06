# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bom,
  ecto_repos: [Bom.Repo]

# Configures the endpoint
config :bom, BomWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NZsIPrYbgw+FDaW6k1cUA+pGzLCsYu+3lfmwdFTnrA0w0HK+iWSgQys24jf7O0Yl",
  render_errors: [view: BomWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bom.PubSub,
  live_view: [signing_salt: "IYcASpSi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :bom, :pow,
  user: Bom.Users.User,
  repo: Bom.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
