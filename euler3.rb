# prime factors

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


# how does one figure out a factor?

# if you divide by a number and get no remainder, it's a factor?

# primes are any number that is only divisible by itself or 1

# Looks like Eratosthenes Sieve 

# you have numbers between 1 and Goal

# starting at 2, you eliminate all factors of 2 between 2 and goal 
# the next number will be prime,

# create a list of all numbers between 2 and goal
# process each number
# remove the factors of each prime (thus shrinking the main_list)
# do this until the size of the mainlist == 0

main_list = [*2..13195]
prime_list = [2]
count = 0
while main_list.size > 0 do 
  main_list.delete_if{|item| item % prime_list[-1] == 0}
  prime_list << main_list[0]
  count += 1
end

# now, we reverse the prime_list
target = 600851475143
prime_list = prime_list.reverse

factors = []
prime_list.each do |prime|
	if prime != nil
		if target % prime == 0
			factors << prime
		end
	end
end

puts "The largest prime factor of #{target} is #{factors[0]}"
