# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Problem 1
sum = 0
j = [*1...1000].map {|i| i if (i % 3 == 0 || i % 5 == 0)}
j.each {|k| sum += k ||= 0}

# puts "The answer is #{sum}"