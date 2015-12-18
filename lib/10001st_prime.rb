# Implement your procedural solution here!

def prime_number_for(number)
	prime_numbers = []
	count = 1

	until prime_numbers.length == number
		if is_prime(count)
			prime_numbers << count
		end
		count += 1
	end
	prime_numbers[number-1]
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

