import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :introduction_phoenix_liveview, IntroductionPhoenixLiveview.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "introduction_phoenix_liveview_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :introduction_phoenix_liveview, IntroductionPhoenixLiveviewWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Wat5BcM7+UDB79QTmGW2YrFmA+jMhK2gGnrbaGIfsyujlUGkD2UUX8VRs/u76q0M",
  server: false

# In test we don't send emails.
config :introduction_phoenix_liveview, IntroductionPhoenixLiveview.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
