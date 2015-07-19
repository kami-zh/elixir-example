add = fn a, b -> a + b end

IO.puts add.(1, 2) #=> 3

list = [1, 2, 3] ++ [4, 5, 6]

IO.puts Enum.join(list, ",") #=> 1,2,3,4,5,6

IO.puts "hello" <> "world" #=> helloworld

IO.puts true and true      #=> true
IO.puts true and not false #=> true

{a, b, c} = {:hello, "world", 42}

IO.puts a #=> hello
IO.puts b #=> world
IO.puts c #=> 42

{:ok, result_1} = {:ok, 13}
# {:ok, result_2} = {:error, 13}

IO.puts result_1 #=> 13
# IO.puts result_2 #=> MatchError

[a | [b | [c]]] = [1, 2, 3]

IO.puts a #=> 1
IO.puts b #=> 2
IO.puts c #=> 3

x = 1

IO.puts ^x = 1 #=> 1
# IO.puts ^x = 2 #=> MatchError

[a | _] = [1, 2, 3]

IO.puts a #=> 1
# IO.puts _ #=> CompileError

case {1, 2, 3} do
  {4, 5, 6} ->
    "This clause won't match"
  {1, x, 3} ->
    "This clause will match and bind x to 2 in this clause"
  _ ->
    "This clause would match any value"
end

case 10 do
  ^x -> "Won't match"
  _  -> "Will match"
end

case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    "Will match"
  _ ->
    "Would match, if guard condition were not satisfied"
end

f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end

f.(2, 3)  #=> 5
f.(-2, 3) #=> -6

cond do
  1 + 2 == 4 ->
    "This is never true"
  2 + 2 == 4 ->
    "But this will"
end

if true do
  "This works!"
end

unless true do
  "This will never be seen"
end

if true, do: 1 + 2 #=> 3

defmodule Math do
  def sum(x) do
    if x == 0 do
      0
    else
      x + sum(x - 1)
    end
  end
end

Math.sum(10) #=> 55
