defmodule FoodOrganizer.RestaurantsControllerTest do
  use FoodOrganizerWeb.ConnCase

  describe "create/2" do
    test "when all params are valid, creates the user", %{conn: conn} do
      params = %{name: "Restauranis", email: "restau@nis.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
                "message" => "Restaurant created!",
                "restaurant" => %{
                  "email" => "restau@nis.com",
                  "id" => _id,
                  "name" => "Restauranis"
                }
              } = response
    end

    test "when there are invalid params, return error", %{conn: conn} do
      params = %{email: "restau@nis.com"}

      expected_response = %{"message" => %{"name" => ["can't be blank"]}}


      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response = expected_response
    end

  end
end
