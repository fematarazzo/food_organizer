defmodule FoodOrganizerWeb.RestaurantsViewTest do
  use FoodOrganizerWeb.ConnCase

  import Phoenix.View

  alias FoodOrganizerWeb.RestaurantsView

  alias FoodOrganizer.Restaurant

  describe "render/2" do
    test "renders create.json" do
      params = %{name: "Restaurant", email: "rest@email.com"}
      {:ok, restaurant} = FoodOrganizer.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
                message: "Restaurant created!",
                restaurant: %Restaurant{
                  email: "rest@email.com",
                  id: _id,
                  name: "Restaurant",
                }
              } = response
    end
  end
end
