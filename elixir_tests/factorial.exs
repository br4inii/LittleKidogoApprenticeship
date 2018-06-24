defmodule Factorial do
    def fac(0), do: 1
    def fac(n) when n>0 do n*fac(n-1) end
    def fac(n) when n<0 do IO.puts "Value less than 0" end
end