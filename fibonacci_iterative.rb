def fib(n)
  return 0 if n == 0
  previous = 0
  current = 1
  n = n - 1
  n.times do |i|
   temp = previous
   previous = current
   current = temp + previous 
  end
  return current 
 end

 puts fib(0)
 puts fib(1)
 puts fib(2)
 puts fib(3)
 puts fib(4)
 puts fib(5)
 puts fib(6)
 puts fib(7)
 puts fib(8)
 puts fib(9)