defmodule Multiple do

    @spec sum(integer) :: integer
    def sum(number) do
        #Enum.to_list(1..number-1) |> filter |> sum_list
        # Через арифметическую прогрессию
        sum_divisible_by(number-1, 3) + sum_divisible_by(number-1, 5) - sum_divisible_by(number-1, 15)
    end

    def filter(l) do
        Enum.filter(l, fn(x) -> rem(x, 3) == 0 or rem(x, 5) == 0 end)
    end

    def sum_list(list) do
        Enum.reduce(list, 0, &(&1 + &2))
    end

    def sum_divisible_by(t, n) do
        p = div(t, n)
        (n + p*n)/2 * p
        #div(n*p*(p + 1), 2)
    end
end