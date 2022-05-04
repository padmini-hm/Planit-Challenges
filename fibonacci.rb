# Challenge 1:
# Get the nth number in the fibonacci sequence given n
# Alternatively given a number F, print out whether it's a fibonacci number and what the closest index n in the
# fibonacci sequence is.


def fibonacci_sequence(n, f)
  fib_array = []
  fib_array = (0..n-2).inject([0,1]) {|fib| fib << fib.last(2).reduce(:+)}
  result = fib_array[n-1]
  puts "fibonacci_sequence of number #{n} is #{fib_array} and the #{n}th number is #{result}"
  if fib_array.include? (f)
    puts "#{f} is a fibonacci number"
  else
    puts "#{f} is not a fibonacci number"
  end
end
fibonacci_sequence(5, 2)
# output [0, 1, 1, 2, 3,5]
fibonacci_sequence(8,11)
# output [0, 1, 1, 2, 3, 5, 8, 13, 21]
