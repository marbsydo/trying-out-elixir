defmodule Dijkstra do

	@doc """
	Calculate the greatest common divisor of two integers using Dijkstra's
	algorithm.
	"""

	@spec gcd(number(), number()) :: number()

	def gcd(m, n) do
		cond do
			m == n -> m
			m > n -> gcd(m - n, n)
			true -> gcd(m, n - m)
		end
	end
end

IO.puts Dijkstra.gcd(2, 8)    # 2
IO.puts Dijkstra.gcd(14, 21)  # 7
IO.puts Dijkstra.gcd(125, 46) # 1
IO.puts Dijkstra.gcd(120, 36) # 12