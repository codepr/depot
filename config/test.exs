import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :depot, Depot.Repo,
  database: Path.expand("../depot_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :depot_web, DepotWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "93KnrgaykGLROr1Fjhr4HnLxn1o/OOOFApb/OGmFf2q1BpnNTLI7NTjyvrUWQQiF",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :depot, Depot.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
