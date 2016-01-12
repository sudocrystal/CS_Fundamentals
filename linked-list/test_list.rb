require './List.rb'
require './Node.rb'

x = List.new
x.add("a")
puts x.to_s
x.add("c")
puts x.to_s
x.add_at_index(0, "first")
puts x.to_s
x.add_at_index(2, "b")
puts x.to_s
x.add_at_index(4, "e")
puts x.to_s
x.add_at_index(4, "d")
puts x.to_s
x.add_at_index(6, "f")
puts x.to_s
x.add_at_index(7, "g")
puts x.to_s
x.delete_at_index(3)
puts x.to_s
x.delete_at_index(6)
puts x.to_s
x.delete_at_index(17)
puts x.to_s
x.delete_at_index(0)
puts x.to_s
x.delete_at_index(1)
puts x.to_s
puts x.contains?("a")
puts x.contains?("sfdf")
puts x.contains?("f")
puts x.contains?("hello")
