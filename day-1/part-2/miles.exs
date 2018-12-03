Code.require_file("miles_input.exs", "./")

defmodule Part2 do
  def sum_list([head | tail], sum, sum_counts) do
    if found_frequency_enough?(Map.get(sum_counts, sum)) do
      sum
    else
      sum_list(
        tail,
        sum + head,
        Map.put(sum_counts, sum + head, Map.get(sum_counts, sum + head, 0) + 1)
      )
    end
  end

  def sum_list([], sum, list) do
    sum_list(In.put, sum, list)
  end

  defp found_frequency_enough?(2), do: true
  defp found_frequency_enough?(_), do: false
end

Part2.sum_list(In.put, 0, %{})
|> IO.puts
