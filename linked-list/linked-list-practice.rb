require './List.rb'

def count_node(list)
  temp = list.head
  return 0 if temp == nil
  count = 0
  while temp != nil
    count += 1
    temp = temp.next
  end
  return count
end

def find_min(list)
  temp = list.head
  return nil if temp == nil
  min = list.head.data
  while temp != nil
    if min > temp.data
      min = temp.data
    end
    temp = temp.next
  end
  return min
end

def reverse(list)
  return "reverse not yet implemented"
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
