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
IO.puts _ #=> CompileError
