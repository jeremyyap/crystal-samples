foods = ["Prata", "Youtiao", "Chicken Rice", "Starbucks"]

foods
  .map { |food| food.downcase }
  .each do |food|
    puts "I love #{food}"
  end
