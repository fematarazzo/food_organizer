defmodule FoodOrganizer.Supplies.ExpirationNotification do
  alias FoodOrganizer.Supplies.{ExpirationEmail, GetByExpiration}
  alias FoodOrganizer.Mailer

  def send do
    data = GetByExpiration.call()

    Enum.each(data, fn {to_email, supplies} ->
      to_email
      |> ExpirationEmail.create(supplies)
      |> Mailer.delivery_later!()
    end)
  end
end
