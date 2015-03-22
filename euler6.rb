# Problem: https://projecteuler.net/problem=6
# Solution by Brian Ball @brianball
#  
# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


# The sum (one operation) of the squares (2nd operation) of first ten natural numbers (array of range 1..10) is 385

# test
# sum = 0
# [*1..10].each {|n| sum += n**2}
# puts "#{sum} should be 385."

# square = 0
# [*1..10].each {|n| square += n}
# square = square ** 2
# puts "#{square} - #{sum} = #{square - sum}"

# test confirmed what was shown in the above.

# now, we just make the lists in the range of 100 instead of 10

sum = 0
[*1..100].each {|n| sum += n**2}

square = 0
[*1..100].each {|n| square += n}
square = square ** 2
puts "#{square} - #{sum} = #{square - sum}"