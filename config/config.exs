# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :food_organizer,
  ecto_repos: [FoodOrganizer.Repo]

config :food_organizer, FoodOrganizer.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :food_organizer, FoodOrganizerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8x5eREnnwUy+kFcvSWJDwb0THJKHaPIoMg9hJBCy9zuQwRYb05jCclweSzSZt/sI",
  render_errors: [view: FoodOrganizerWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: FoodOrganizer.PubSub,
  live_view: [signing_salt: "iH7hXBhY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
