use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :learn_phoenix, LearnPhoenixWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :learn_phoenix, LearnPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "brianemory",
  password: "",
  database: "learn_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
