defmodule FoodOrganizerWeb.RestaurantsController do
  use FoodOrganizerWeb, :controller

  alias FoodOrganizer.Restaurant
  alias FoodOrganizer.Restaurants.Create

  alias FoodOrganizerWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
