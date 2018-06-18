
# Exercise1 elixir programming

## Chapter 1-2

### Pattern matching 1

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

### pattern matching 2

1. `[a,b,a]=[1,2,3]` this will cause a match error as `a` has already been matched to value `1` and not `3` as in the end of the list on the right.
2. `[a,b,a]=[1,1,2]` doesn't match either as the value of `1` already matched `a` and thus cant match to `b`.
3. `[a,b,a]=[1,2,1]` matches as all variables match to the values on the write.

### pattern matching 3

if we assume variable `a` contains a value `2`

1. `[a,b,a]=[1,2,3]` would not match as the last value on right doesn't match.
2. `[a,b,a]=[1,1,2]` wouldn not match either.
3. `a=1` matches successfully although changes the value matching `a` to `1`.
4. `^a=2` would definetly match as variable `a` retains its original match that equates to `2` on the right.
5. `^a=1` no match.
6. `^a=2-1` wount match, the value represented by `2-1` does not match our variable which is `2`.

## Functions

### functions exercise 1

Create a function to do the following

* `list_concat.([:a, :b], [:c, :d])` to give `[:a, :b, :c, :d]`
    solution
    `list_concat = fn a,b -> a ++ b end`

* `sum.(1, 2, 3)` to display `6`
    solution
    `sum= fn a,b,c -> a+b+c end`
* `pair_tuple_to_list.( { 1234, 5678 } )` to display `[ 1234, 5678 ]`
    solution
    `pair_tuple_to_list = fn
    //TODO check out tuples again.

### functions exercise 2

    in file /elixir tests/fizz.exs