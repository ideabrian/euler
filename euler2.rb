# Euler Problem 2

# figure out the pattern
fibs = []
i = 0
j = 1
k = i + j
fibs << k
i = j
j = k
k = j + k
fibs << k

# create the array
@fib_array = []
# build a recursive function
def fibs(j,k)
	@goal = 4000000
	i = j
	j = k
	k = i + j
  unless k > @goal
  	@fib_array << k
    fibs(j,k)
  end
end

# call the function with initial values
fibs(0,1)

# print output
sum = 0
@fib_array.each {|i| sum += i if i % 2 == 0 }
# puts "The sum of even Fibonacci items up to #{@goal} is #{sum}"
