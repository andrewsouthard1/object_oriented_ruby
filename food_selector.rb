favorite_food = []

5.times do 
  p "What are your favorite foods?"
  food = gets.chomp
  favorite_food << food
end

count = 0
favorite_food.each do |food|
  count += 1
  p "#{count}. #{food}"
end
