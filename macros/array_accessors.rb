class Array
  [:first, :second, :third, :fourth, :fifth, :sixth].each_with_index do |ordinal, index|
    define_method(ordinal) { self[index] }
  end
end

array = ["A", "B", "C", "D", "E", "F"]

[:first, :second, :third, :fourth, :fifth, :sixth].each { |ordinal| puts array.send(ordinal) }
