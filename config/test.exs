import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dnd, DndWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "recvL6FJfGocNe2QrR/OlhbdX3/PEeqwEBNplVFuM17qiWc8UCBw3z7T5Rh8GHbs",
  server: false

# In test we don't send emails.
config :dnd, Dnd.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
