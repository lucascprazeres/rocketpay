defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "It should be able to return sum of numbers in a file" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "It should not be able to return sum of numbers in an invalid file" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file."}}

      assert response == expected_response
    end
  end
end
