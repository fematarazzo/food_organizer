defmodule FoodOrganizerWeb.SuppliesController do
  use FoodOrganizerWeb, :controller

  alias FoodOrganizer.Supply

  alias FoodOrganizerWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Supply{} = supply} <- FoodOrganizer.create_supply(params) do
      conn
      |> put_status(:created)
      |> render("create.json", supply: supply)
    end
  end
end