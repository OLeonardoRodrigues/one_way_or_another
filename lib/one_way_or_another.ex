defmodule OneWayOrAnother do
  @moduledoc """
  "One way or another, I'm gonna find you!" :)
  """

  @doc """
  Different search algorithms in Elixir.

  ## Examples

      iex> OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3)
      {true, 3}

      iex> OneWayOrAnother.binary([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 15)
      {false, -1}

      iex> OneWayOrAnother.linear([0, 1, 2, 3, 4], 2)
      {true, 2}

      iex> OneWayOrAnother.linear([0, 1, 2, 3, 4], 5)
      {false, -1}

  """
  def binary(values, value), do: binary(values, value, false, 0)
  defp binary(values, value, false, index) when length(values) > 1 do
      cond do
          Enum.at(values, div(length(values), 2)) == value -> binary(values, value, true, index+div(length(values), 2))
          Enum.at(values, div(length(values), 2)) > value -> binary(Enum.slice(values, 0..div(length(values), 2)-1), value, false, index)
          Enum.at(values, div(length(values), 2)) < value -> binary(Enum.slice(values, div(length(values), 2)+1..-1), value, false, index+div(length(values), 2)+1)
      end
  end
  defp binary(_values, _value, found, index) when found, do: {found, index}
  defp binary(values, value, false, index) do
      if Enum.at(values, div(length(values), 2)) == value do
          binary(values, value, true, index+div(length(values), 2))
      else
          {false, -1}
      end
  end

  def linear(valuesList, value), do: linear(valuesList, value, 0, false)
  defp linear(_valuesList, _value, index, found) when found, do: {found, index-1}
  defp linear(valuesList, value, index, _found) do
      if index < Enum.count(valuesList) do
          found = Enum.at(valuesList, index)==value
          linear(valuesList, value, index + 1, found)
      else
          {false, -1}
      end
  end
end
