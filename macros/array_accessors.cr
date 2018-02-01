class Array(T)
  {% for ordinal, index in [:first, :second, :third, :fourth, :fifth, :sixth] %}
    def {{ordinal.id}}
      self[{{index}}]
    end
  {% end %}
end

array = ["A", "B", "C", "D", "E", "F"]

puts array.first
puts array.second
puts array.third
puts array.fourth
puts array.fifth
puts array.sixth
