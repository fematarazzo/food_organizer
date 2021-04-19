defmodule FoodOrganizer.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("felipe", 28) do
    {:ok, "Nice job!"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Noice"}
  end

  defp evaluate(name, age) do
    {:error, "Not Today"}
  end
end
