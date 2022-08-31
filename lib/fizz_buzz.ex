defmodule FizzBuzz do
  def hello() do
    :world
  end

  def build(file_name) do
    file_name |> File.read() |> handle_file_name()
  end

  defp handle_file_name({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_number/1)

    {:ok, result}
  end

  defp handle_file_name({:error, reason}), do: {:error, "Error : #{reason}"}

  defp convert_and_evaluate_number(elem) do
    elem |> String.to_integer() |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
