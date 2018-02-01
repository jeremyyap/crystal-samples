array1 = [1, 2, 3, "A", "B", "C"]
array2 = [] of Time

array2.push(Time.now)
array3 = array1 + array2

puts array3
puts
puts "Type of array1 is #{typeof(array1)}"
puts "Type of array2 is #{typeof(array2)}"
puts "Type of array3 is #{typeof(array3)}"
