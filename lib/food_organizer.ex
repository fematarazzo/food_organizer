defmodule FoodOrganizer do
  alias FoodOrganizer.Restaurants.Create, as: RestaurantCreate
  alias FoodOrganizer.Supplies.Create, as: SupplyCreate
  alias FoodOrganizer.Supplies.Get, as: SupplyGet

  defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

  defdelegate create_supply(params), to: SupplyCreate, as: :call

  defdelegate get_supply(params), to: SupplyGet, as: :call
end
