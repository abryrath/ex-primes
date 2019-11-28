range = 1_000_000
IO.write("The first 25 primes are:\n( ")
PrimesSoETreeFolding.primes()
|> Stream.take(25)
|> Enum.each(&IO.write("#{&1} "))

IO.puts(")")

testfunc = fn ->
  ans = PrimesSoETreeFolding.primes()
  |> Stream.take_while(&(&1 <= range))
  |> Enum.count()

  ans
end

:timer.tc(testfunc)
|> (fn {t, ans} ->
      IO.puts("There are #{ans} primes up to #{range}.")
      IO.puts("This test bench took #{t} microseconds.")
    end).()
