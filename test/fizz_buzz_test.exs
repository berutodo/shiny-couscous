defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid value is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :buzz, 4, :fizz, :buzz, :fizz, :fizzbuzz, :fizz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when a invalid value is provided, returns the converted list" do
      expected_response = {:error, "Error : enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
