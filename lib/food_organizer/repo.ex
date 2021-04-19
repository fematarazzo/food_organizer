defmodule FoodOrganizer.Repo do
  use Ecto.Repo,
    otp_app: :food_organizer,
    adapter: Ecto.Adapters.Postgres
end
