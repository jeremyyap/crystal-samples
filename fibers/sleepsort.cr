






array = [2, 4, 3, 2, 3, 1, 1, 4]


channel = Channel(Int32).new

array.each do |value|
  spawn do

    sleep value * 0.1
    channel.send(value)
  end
end

count = 0
array.size.times do
  puts channel.receive
end
