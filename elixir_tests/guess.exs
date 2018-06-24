defmodule Chop do
    
        
    def guess(actual,(a..z)) when actual < z do
            a..z=a..round(z/2)            
            IO.puts "Is it #{z}"
            guess(actual,(a..z))        
        end

    def guess(actual,(a..z)) when actual > z do
            a..z=round(z/2)..z
            IO.puts "Is it #{a}"
            guess(actual,(a..z))
    end
    def guess(actual,(a..z)) when actual == round(z/2) do
        IO.puts "#{actual}"
    end
    
end