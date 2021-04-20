defmodule FoodOrganizerWeb.RestaurantsController do
  use FoodOrganizerWeb, :controller

  alias FoodOrganizer.Restaurant

  alias FoodOrganizerWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- FoodOrganizer.create_restaurant(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
