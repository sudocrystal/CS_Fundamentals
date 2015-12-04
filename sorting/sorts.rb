require 'pry'
# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
	array = []
	rand_size = rand(10) + 1
	(0..rand_size).each do
		array.push( rand(1000) )
	end
	return array
end

# TODO: write insertion sort
def insertion_sort(arr)
	# Checks the next unsorted item against the sorted items and puts it in the correct place in the sorted items
	index = 1
	while index != arr.length
		check = index - 1
		while true
			if arr[index] > arr[check]
				number = arr[index]
				arr.delete(arr[index])
				arr.insert(check+1, number)
				break
			elsif check == 0
				number = arr[index]
				arr.delete(arr[index])
				arr.insert(check, number)
				break
			else
				check -= 1
			end
		end
		index += 1
	end
	return arr
end



# TODO: write selection sort
def selection_sort(arr)
	# Find the smallest unsorted item and places it next in the sorted items
	index = 0
	while index != arr.length
		check = index
		min = nil
		while check != arr.length
			if min == nil
				min = arr[check]
			elsif arr[check] < min
				min = arr[check]
			end
			check += 1
		end
		arr.delete(min)
		arr.insert(index, min)
		index += 1
	end
	return arr
end


begin
	numbers = create_array()
	sorted_numbers = numbers.dup.sort!
	puts "Generating an array that's not sorted..."
end while numbers == sorted_numbers

puts "original array = "
print numbers
puts "\n\n"

puts "after RUBY SORT, array = "
print sorted_numbers
puts "\n\n"

puts "after INSERTION SORT, array = "
insertion_numbers = insertion_sort(numbers.dup)
print insertion_numbers
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers
puts "\n\n"

puts "after SELECTION SORT, array = "
selection_numbers = selection_sort(numbers.dup)
print selection_numbers
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers
puts "\n\n"


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
