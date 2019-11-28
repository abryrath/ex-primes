defmodule PrimesTest do
  use ExUnit.Case
  # doctest Primes

  test "first 25 primes by stream" do
    actual = Primes.stream
    |> Stream.take(25)
    |> Enum.to_list

    expected = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    assert actual == expected
  end
end
