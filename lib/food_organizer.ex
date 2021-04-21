defmodule FoodOrganizer do
  alias FoodOrganizer.Restaurants.Create, as: RestaurantCreate
  alias FoodOrganizer.Supplies.Create, as: SupplyCreate

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

  defdelegate create_supply(params), to: SupplyCreate, as: :call
end
