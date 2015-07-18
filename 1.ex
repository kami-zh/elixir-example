add = fn a, b -> a + b end

IO.puts add.(1, 2) #=> 3

list = [1, 2, 3] ++ [4, 5, 6]

IO.puts Enum.join(list, ",") #=> 1,2,3,4,5,6

IO.puts "hello" <> "world" #=> helloworld

IO.puts true and true      #=> true
IO.puts true and not false #=> true
