defmodule FoodOrganizerWeb.RestaurantsController do
  use FoodOrganizerWeb, :controller

  alias FoodOrganizer.Restaurant
  alias FoodOrganizer.Restaurants.Create

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- Create.call(params) do
      conn
      |> put_status(:ok)
      |> render("create.json", restaurant: restaurant)
    end
  end
end
