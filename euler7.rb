# Problem: https://projecteuler.net/problem=7
# Solution by Brian Ball @brianball
#  
# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# Going to borrow my code from Euler 3

# This is one take on the Eratosthenes Sieve
main_list = [*2..1000000]    # this is just an arbitrarily large number
prime_list = [2]

while prime_list.size < 10001 do 														# the goal
  main_list.delete_if{|item| item % prime_list[-1] == 0}    # the sieve
  prime_list << main_list[0]                                
  # puts prime_list.inspect                            # uncomment to watch the array build
  puts "The prime list size is #{prime_list.size}"
  puts "The actual 10,001st prime is #{prime_list[-1]}"
end

