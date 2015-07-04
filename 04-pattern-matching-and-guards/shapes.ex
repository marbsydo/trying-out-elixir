defmodule Geometry do
	def area(:rectangle, length, width) when length >= 0 and width >= 0 do
		length * width
	end

	def area(:triangle, base, height) when base >= 0 and height >= 0 do
		0.5 * base * height
	end

	def area(:circle, radius) when radius >= 0 do
		:math.pi * radius * radius
	end

	def area(:square, side) when side >= 0 do
		side * side
	end
end

IO.puts Geometry.area(:square, 5)
IO.puts Geometry.area(:circle, 3)
IO.puts Geometry.area(:triangle, 5, 7)
IO.puts Geometry.area(:rectangle, 9, 2)