defmodule Powers do
	
	@doc """
	Use Newton-Raphson method for calculating roots
	"""

	def nth_root(x, n) do
		nth_root(x, n, x / 2.0)
	end

	defp nth_root(x, n, estimate) do
		IO.puts "Current guess is #{estimate}"
		f = :math.pow(estimate, n) - x
		f_prime = n * :math.pow(estimate, n - 1)
		next = estimate - f / f_prime
		change = abs(next - estimate)
		cond do
			change < 1.0e-8 -> next
			true -> nth_root(x, n, next)
		end
	end
end

IO.puts Powers.nth_root(27, 3)

# Current guess is 13.5
# Current guess is 9.049382716049383
# Current guess is 6.142823558176272
# Current guess is 4.333725614685509
# Current guess is 3.3683535855517652
# Current guess is 3.0388137235951382
# Current guess is 3.0004936436555805
# Current guess is 3.000000081210202
# Current guess is 3.000000000000002
# 3.0