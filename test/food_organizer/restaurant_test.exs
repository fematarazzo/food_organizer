defmodule FoodOrganizer.RestaurantTest do
  use FoodOrganizer.DataCase

  alias Ecto.Changeset
  alias FoodOrganizer.Restaurant

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = %{name: "Restauranis", email: "restau@nis.com"}

      response = Restaurant.changeset(params)
      assert %Changeset{changes: %{name: "Restauranis", email: "restau@nis.com"}, valid?: true} = response
    end

    test "when there are invalid params, returns an invalid changeset" do
      params = %{name: "A", email: ""}
      expected_response = %{email: ["can't be blank"], name: ["should be at least 2 character(s)"]}

      response = Restaurant.changeset(params)
      assert %Changeset{valid?: false} = response

      assert errors_on(response) == expected_response
    end
  end
end
