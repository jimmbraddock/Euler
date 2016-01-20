Code.load_file("multiple_3_or_5.exs")

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule MultipleTest do
  alias Multiple, as: M

  use ExUnit.Case, async: true

  test "sum list" do
    assert M.sum(10) == 23
  end

  test "sum list 1000" do
    assert M.sum(1000) == 233168
  end

  test "sum list 0" do
    assert M.sum(0) == 0
  end
end