# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ms_api_auth_exs,
  ecto_repos: [MsApiAuthExs.Repo]

# Configures the endpoint
config :ms_api_auth_exs, MsApiAuthExsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WtAOIaglNIyBBvYp9ybMnw7yyBpxsR3uTBCy9GO6sUj+mUAsRA3wU4p8di6gDm8U",
  render_errors: [view: MsApiAuthExsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MsApiAuthExs.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ms_api_auth_exs, MsApiAuthExs.Guardian,
  issuer: "ms_api_auth_exs",
  secret_key: "NnHVnHBLxiijtiigvafjue2w+ntFQUqjYRNNxmP4FnOixa7v/4p4T2tQSx6hK9s2"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
