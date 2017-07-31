# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learn_phoenix,
  ecto_repos: [LearnPhoenix.Repo]

# Configures the endpoint
config :learn_phoenix, LearnPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pfDVpGWOlrsahQDEtoiARTAKd/2MRG6wWQ4LnaI4P5zGd5TV3t1vtlQCISZ+XiVO",
  render_errors: [view: LearnPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearnPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
