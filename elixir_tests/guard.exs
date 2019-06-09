defmodule Guard do
	def what_is(x) when is_number(x) do
		IO.puts "#{x} is a number"
	end
	def what_is(x) when is_list(x) do
		IO.puts "#{x} is a list"
	end
	def what_is(x) when is_atom(x) do
		IO.puts "#{x} is an atom"
		end

#default values to paramaters 
	def defpara(a,b\\2,c,d\\4), do: IO.inspect [a,b,c,d]
end