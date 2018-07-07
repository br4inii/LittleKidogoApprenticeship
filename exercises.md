
# Exercises On Programming with Elixir

## Pattern Matching

Exercise 1

   Which of the following will match?
    a = [1, 2, 3]
    a = 4
    4 = a
    [a, b] = [ 1, 2, 3 ]
    a = [ [ 1, 2, 3 ] ]
    [a] = [ [ 1, 2, 3 ] ]
    [[a]] = [ [ 1, 2, 3 ] ]

    The following match
     a=[1,2,3]
     a=4
     4=a
     a=[[1,2,3]]
     [a]=[[1,2,3]]

     The following wount match
     [a,b]=[1,2,3] the elements of both sides of the '=' sign should be of equal magnitude.

     [[a]]=[[1,2,3]]

Exercise 2

1. `[a,b,a]=[1,2,3]` this will cause a match error as `a` has already been matched to value `1` and not `3` as in the end of the list on the right.
2. `[a,b,a]=[1,1,2]` doesn't match either as the value of `1` already matched `a` and thus cant match to `b`.
3. `[a,b,a]=[1,2,1]` matches as all variables match to the values on the write.

Exercise 3

if we assume variable `a` contains a value `2`

1. `[a,b,a]=[1,2,3]` would not match as the last value on right doesn't match.
2. `[a,b,a]=[1,1,2]` wouldn not match either.
3. `a=1` matches successfully although changes the value matching `a` to `1`.
4. `^a=2` would definetly match as variable `a` retains its original match that equates to `2` on the right.
5. `^a=1` no match.
6. `^a=2-1` wount match, the value represented by `2-1` does not match our variable which is `2`.

## Functions

Exercise 1

Create a function to do the following

* `list_concat.([:a, :b], [:c, :d])` to give `[:a, :`, :c, :d]`
    solution
    `list_concat = fn a,b -> a ++ b end`

* `sum.(1, 2, 3)` to display `6`
    solution
    `sum= fn a,b,c -> a+b+c end`
* `pair_tuple_to_list.( { 1234, 5678 } )` to display `[ 1234, 5678 ]`
    solution
    `pair_tuple_to_list = fn ({A,B}) -> ([A,B])`
    	
    //TODO check out tuples again.//DONE//

Exercise 2 & 3

in the file `/elixir_tests/fizz.exs`

Exercise 4

`prefix` function to print two spaced strings 
`prefix = fn a ->`
    `(fn b ->   `
       ` a<>" "<>b `
    `end) `
`end`

Exercise 5

`Enum.map [1,2,3,4], fn x -> x + 2 end` becomes `Enum.map [1,2,3,4], &(&1 + 2)`

`Enum.map [1,2,3,4], fn x -> IO.inspect x end` becomes `Enum.map [1,2,3,4], &(IO.inspect(&1))` or `Enum.map [1,2,3,4], &(IO.inspect/1)`

## Modules

    * Exercise 1: refer to /elixir_tests/times.exs
    * Exercise 2:
        method 1 results

```
$ iex times.exsErlang/OTP 20 [erts-9.3] [source] [64-bit] [smp:2:2][ds:2:2:10] [async-threads:10] [kernel-poll:false]

Interactive Elixir (1.6.5) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Times.triple 9
27
iex(2)> Times.double 5
10
iex(3)>
```

        method 2 results
```
iex(1)> c "times.exs"
[Times]
iex(2)> Times.triple(59)
177
iex(3)> Times.double(12)
24
iex(4)>
```
    * Exercise 3: Find libraries to 
a. Convert float to string with 2 decimals
```
