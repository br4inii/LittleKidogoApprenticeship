#EXERCISE II
#Write a function that takes three arguments. 
#If the first two are zero, return “FizzBuzz.” 
#If the first is zero,return “Fizz.” 
#If the second is zero, return “Buzz.” 
#Otherwise return the third argument.

fizz = fn 
    (0,0,_) -> "FizzBuzz"
    (0,_,_) -> "Fizz"
    (_,0,_) -> "Buzz"
    (_,_,c) -> "#{c}"
end

IO.puts fizz.(0,0,3)
IO.puts fizz.(0,2,3)
IO.puts fizz.(1,0,3)
IO.puts fizz.(1,2,5)

#EXERCISE III
#The operator rem(a, b) returns the remainder after dividing a by b . 
#Write a function that takes a single integer ( n ) and calls the 
#function in the previous exercise, passing it rem(n,3) , rem(n,5) , and n . 
#Call it seven times with the arguments 10, 11, 12, and so on.

funk = fn
    (n) -> fizz.(rem(n,3),rem(n,5),n)
end

IO.puts funk.(10)
IO.puts funk.(11)
IO.puts funk.(12)
IO.puts funk.(13)
IO.puts funk.(14)
IO.puts funk.(15)
IO.puts funk.(16)