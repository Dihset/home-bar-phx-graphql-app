use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :home_bar, HomeBar.Repo,
  username: "phoenix",
  password: "password",
  database: "home-bar_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "home-bar-postgresql",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :home_bar, HomeBarWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
