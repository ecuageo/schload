# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :schload,
  ecto_repos: [Schload.Repo]

# Configures the endpoint
config :schload, SchloadWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KWuNKNfoejTTP/P/61wBV/09oRpY+qs4uu52KBAgNpJp76OvZJ+iRaCL4+RvKaYh",
  render_errors: [view: SchloadWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Schload.PubSub,
  live_view: [signing_salt: "MzRKPnBZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
