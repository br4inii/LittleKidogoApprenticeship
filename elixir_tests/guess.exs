defmodule Chop do
    @moduledoc """
    A simple program to find a guessed number
    using binary search
    """

    def guess(actual_number,range,guess \\ 0)
    #   guess() takes 3 arguments where one is initially
    #   defualted to 0.
    def guess(actual,(a..z),guess) when guess > actual do
    #   answer lies between lower range limit and (our guess-1)
        z = guess-1
        our_guess = div((a + z),2)
        IO.puts "Is it #{our_guess}"
        guess(actual, a..z,our_guess)
        end

    def guess(actual,(a..z),guess) when actual > guess do
    # answer lies between our guess +1 and upper range limit
        a = guess+1
        our_guess = div((a + z),2)
        IO.puts "Is it #{our_guess}"
        guess(actual, a..z, our_guess)
    end
    def guess(actual,(a..z),guess) when guess == actual do
        IO.puts "#{actual}"
    end

end
