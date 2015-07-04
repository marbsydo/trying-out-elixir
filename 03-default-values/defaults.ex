defmodule Geometry do
	def area(length \\ 1, width \\ 1) do
		length * width
	end
end

IO.puts Geometry.area(3, 7) # 21
IO.puts Geometry.area(5)    # 5
IO.puts Geometry.area()     # 1