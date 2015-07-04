# Stop conflict with Kernel function (bleugh!)
import Kernel, except: [raise: 2]

defmodule Powers do
	def raise(x, n) do
		cond do
			n == 0 -> 1
			n == 1 -> x
			n > 0 -> x * raise(x, n - 1)
			n < 0 -> 1.0 / raise(x, -n)
		end
	end
end

IO.puts Powers.raise(5, 1)   # 5
IO.puts Powers.raise(2, 3)   # 8
IO.puts Powers.raise(1.2, 3) # 1.728
IO.puts Powers.raise(2, 0)   # 1
IO.puts Powers.raise(2, -3)  # 0.125