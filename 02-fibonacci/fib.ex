defmodule Fibonacci do
	def fib(0) do
		0
	end

	def fib(1) do
		1
	end

	def fib(n) do
		fib(n - 1) + fib(n - 2)
	end
end

# First 20 fibonacci numbers
for n <- 0..19, do: IO.puts Fibonacci.fib(n)