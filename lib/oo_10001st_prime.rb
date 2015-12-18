# Implement your object-oriented solution here!

class Prime
	def initialize(num)
		@num = num
	end

	def number
		prime_numbers = []
		count = 1

		until prime_numbers.length == @num
			if is_prime(count)
				prime_numbers << count
			end
			count += 1
		end
		prime_numbers[@num-1]
	end

	def is_prime(number) 
		if number < 2
			false
		else 	
			multiples = []

			Math.sqrt(number).floor.downto(1) do |num| 
				if number % num == 0 
					multiples << num
				end	
			end

			multiples.length == 1
		end
	end
end

