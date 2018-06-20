#Funtions and Modules
#exercis 4: sum of numbers upto nth integer
defmodule Sum do
    #def of(0), do: 0
    def of(n), do: n+of(n-1)
    def of(0), do: 0
end