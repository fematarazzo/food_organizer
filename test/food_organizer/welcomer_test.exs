defmodule FoodOrganizer.WelcomerTest do
  use ExUnit.Case

  alias FoodOrganizer.Welcomer

  describe "welcome/1" do
    test "when the user fits felipe and 28" do
      params = %{"name" => "felipe", "age" => "28"}
      result = Welcomer.welcome(params)

      expected_result = {:ok, "Nice job!"}

      assert result == expected_result
    end

    test "when the user is not felipe but the age is equal or over 18" do
      params = %{"name" => "test", "age" => "20"}
      result = Welcomer.welcome(params)

      expected_result = {:ok, "Noice"}

      assert result == expected_result
    end

    test "when the user is not felipe and is under age" do
      params = %{"name" => "test", "age" => "15"}
      result = Welcomer.welcome(params)

      expected_result = {:error, "Not Today"}

      assert result == expected_result
    end
  end
end
