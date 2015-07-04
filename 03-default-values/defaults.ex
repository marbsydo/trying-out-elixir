defmodule Geometry do
	def area(length \\ 1, width \\ 1) do
		length * width
	end
end

IO.puts Geometry.area(3, 7) # 21
IO.puts Geometry.area(5)    # 5
IO.puts Geometry.area()     # 1

defmodule Test do
	def sum(a \\ 3, b, c \\ 7) do
		a + b + c
	end
end

IO.puts Test.sum(11, 22, 33) # 66 (a=11, b=22, c=33)
IO.puts Test.sum(11, 22)     # 40 (a=11, b=22, c=7 )
IO.puts Test.sum(11)         # 21 (a=3,  b=11, c=7 ) <- Note how a defaults