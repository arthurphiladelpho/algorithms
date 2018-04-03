require 'benchmark'

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

puts Benchmark.measure{
  fib(20)
}