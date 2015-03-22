# Problem: https://projecteuler.net/problem=5
# Solution by Brian Ball @brianball
#
# Smallest multiple
# Problem 5

# 2520 is the smallest number that can be divided by each
# of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# When we think about how to solve a problem, we initially think how a person might solve it.
# We don't consider doing millions of calculations because we'd never want to spend the time.

# However, that's What computers do. And they can do it fast. And they love it. And they 
# feel useful while they do it.

# So, how do we find which numbers can be divided by other numbers?
# Easy, we tell a computer to experiment with every number - changing the variables as they fail.

# So, what we're looking for us a number that the numbers 1 through 20 can divide into evenly
# without a remainder?

# Here's how it works: 

# So let's start with 20:

# Does 19 divide evenly into 20, no (we could try to find some mathematical algorithm here,
# 	   but that's how a HUMAN would do it. A computer doesn't think. A computer computes.)

# So, we don't skip any numbers, we go directly to 21, does 19 divide evenly into 21? No.

# So we just keep letting the computer count.. the next would be 22 (etc.)

# But, as humans, we start to optimize. We notice there's a requirement that all numbers need
# to divide evenly. So, at a minimum we're going to be working with multiples of 20.

# If 20 doesn't work, the only next possible number is 40 (a multiple of 20)
# But, again, 19 doesn't divide evenly into 20, so 60, no, 80,

# So, let's see how this works.

# t = 19
# i = 20
# while i % t != 0
# 	i += 20
# end
# puts "Looks like #{i} / 19.0 == 0"

# now, let's move t down to 18
# while the sum of the resulting array > 0
# 	we'll make an array with the reusults of the mod of each number.

max_sum = 0																	# last minute idea to see what the maximum sum could be
a = 20  # this won't work, but let's start somewhere
while true do
	results = [*1..20].map {|i| a % i}        # we're checking that modula returns 0 for each item in list
	sum = 0
	results.each {|adding| sum += adding }		# let's sum up the results of the array (at zero, we're done)
	
	puts "The sum is #{sum}"									# It's kind of fun to see the computer working.
	puts results.inspect											# I bet we could intuit some patterns from the max sum.
  max_sum = sum if sum > max_sum
  break if sum == 0
  
	a += 20
end

puts "#{a} should be equally divisible by numbers in the range 1 - 20"
puts "P.S. The maximum sum of the modulus array was: #{max_sum}"

# Note. My intuition knows this is quite slow. But, I'm watching interesting YouTube videos while it computes.