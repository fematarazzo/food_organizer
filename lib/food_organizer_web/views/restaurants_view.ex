defmodule FoodOrganizerWeb.RestaurantsView do
  use FoodOrganizerWeb, :view

  def render("create.json", %{restaurant: restaurant}) do
    %{
      message: "Restaurant created!",
      restaurant: restaurant
    }
  end
end
