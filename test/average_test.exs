defmodule Talib.AverageTest do
  use ExUnit.Case
  alias Talib.Average

  doctest Talib.Average

  defmodule Fixtures do
    def numbers do
      [
        89, 77, 53, 64, 78, 67, 30, 6, 24, 53,
        46, 30, 100, 48, 34, 69, 40, 44, 66, 89
      ]
    end

    def numbers_mean, do: 5535 / 100
    def numbers_median, do: (53 + 46) / 2
    def numbers_mode, do: [30, 53, 89]
    def numbers_midrange, do: (6 + 100) / 2
  end

  # Mean

  test "mean returns the mean" do
    assert Average.mean(Fixtures.numbers) == Fixtures.numbers_mean
  end

  test "mean returns nil when the list is empty" do
    assert Average.mean([]) === nil
  end

  test "mean returns the number when the list is 1 number long" do
    assert Average.mean([3]) == 3
  end

  # Median

  test "median returns the median" do
    assert Average.median(Fixtures.numbers) == Fixtures.numbers_median
  end

  test "median returns nil when the list is empty" do
    assert Average.median([]) === nil
  end

  test "median returns the number when the list is 1 number long" do
    assert Average.median([3]) == 3
  end

  # Midrange

  test "midrange returns the midrange" do
    assert Average.midrange(Fixtures.numbers) == Fixtures.numbers_midrange
  end

  test "midrange returns nil when the list is empty" do
    assert Average.midrange([]) === nil
  end

  test "midrange returns the number when the list is 1 number long" do
    assert Average.midrange([3]) == 3
  end

  # Mode

  test "mode returns the mode" do
    assert Average.mode(Fixtures.numbers) == Fixtures.numbers_mode
  end

  test "mode returns nil when the list is empty" do
    assert Average.mode([]) === nil
  end

  test "mode returns the number when the list is 1 number long" do
    assert Average.mode([3]) == 3
  end
end
