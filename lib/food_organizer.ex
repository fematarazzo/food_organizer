defmodule FoodOrganizer do
  alias FoodOrganizer.Restaurants.Create
  defdelegate create_restaurant(params), to: Create, as: :call
end
