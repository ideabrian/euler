# Problem: https://projecteuler.net/problem=4
# Solution by Brian Ball @brianball
#  
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# How to solve the problem:

# Since we want the largest palindromic, we just brute force it.
# Work backward from 999 * 999 (that would be the winner if it was palindromic)
# Create two lists of all three-digit numbers
# Create a method to check for palindromic numbers
# Record the numbers involved when a palindromic number is found
# Sort the final list


def palindromic(a,b)
	return [a,b,a*b] if ((a * b).to_s == (a * b).to_s.reverse)
end

# puts palindromic(91,99)  # works out according to numbers given

list_a = [*100..999].reverse
list_b = [*100..999].reverse
palindromes = []
list_a.each do |i|
	list_b.each do |j|
		if palindromic(i,j)
			palindromes << palindromic(i,j)
		end
	end
end

result = palindromes.sort {|left, right| left[2] <=> right[2]}

puts "The largest palindrome made from the product of two 3-digit numbers is:" 
puts "#{result[-1][2]} from the product of: #{result[-1][0]} & #{result[-1][1]}"