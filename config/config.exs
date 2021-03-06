# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :secure,
  ecto_repos: [Secure.Repo]

# Configures the endpoint
config :secure, SecureWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AxXf9hifeECOiqxQtTPiaClNVNHlb8rx9L5lwya8dKeI2GJtHy9mHFfta03L3cxw",
  render_errors: [view: SecureWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Secure.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian Configuration

config :secure, Secure.Guardian,
  issuer: "secure",
  secret_key: "L3q3xxWcMGq1Iywo0OHa25QN/oMxmoe43gzGysXXEQsPF+JD+pbPLBVwF2X5FBb4"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
