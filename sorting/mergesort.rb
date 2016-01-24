require 'pry'

def mergesort(a)
	if a.length <= 1
		return a
	end
	#split list in half
	left, right = split_array(a)
	#merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	#combine sorted halves
	return combine(left, right)
end

def split_array(a)

	half_size = ((a.length)/2).to_i #if array is 11 long, returns 5
	left = a.take(half_size)
	right = a.drop(half_size)
	return left, right

	# find the middle index
	# split the array in half - take a look at take and drop in the ruby docs, or use ranges
	# return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up

end

# precondition: a and b are sorted
def combine(a, b)


	result = []

	#did this without iterating through indices, to see what would happen. I think it's uglier than it would be if I just iterated through indices.
	while !!a[0] || !!b[0]
		if !!a[0] && !!b[0]
			#if both indices have something in them
			#compare and move smaller to result
			if a[0] < b[0]
				min = a.shift(1)
				result.push(min[0])
			else #this accounts for the equal to or a is greater case. arbitrary which one we take when they are equal.
				min = b.shift(1)
				result.push(min[0])
			end
		else #either a or b is empty
			#move whatever is leftover to result
			if !!a[0]
				min = a.shift(1)
				result.push(min[0])
			else
				min = b.shift(1)
				result.push(min[0])
			end
		end
	end
	return result

	# create a results array
	# counters pointing to the index of the smallest elements in each array
	# check that we have elements to compare
		# push the smaller element onto the result array
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result

end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
