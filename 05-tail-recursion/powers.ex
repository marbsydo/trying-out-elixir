import Kernel, except: [raise: 2, raise: 3]

defmodule Powers do

	@doc """
	Raise a number x to an integer power n
	"""

	@spec raise(number(), number()) :: number()

	def raise(_, n) when n == 0 do
		1
	end

	def raise(x, n) when n < 0 do
		1.0 / raise(x, -n)
	end

	def raise(x, n) when n > 0 do
		raise(x, n, 1)
	end

	# Counts down from n to 0, multiplying the accumulator by x each time

	@spec raise(number(), number(), number()) :: number()

	defp raise(_, n, acc) when n == 0 do
		acc
	end

	defp raise(x, n, acc) do
		raise(x, n - 1, x * acc)
	end
end

IO.puts Powers.raise(5, 1)   # 5
IO.puts Powers.raise(2, 3)   # 8
IO.puts Powers.raise(1.2, 3) # 1.728
IO.puts Powers.raise(2, 0)   # 1
IO.puts Powers.raise(2, -3)  # 0.125