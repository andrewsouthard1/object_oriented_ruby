# favorite_food = []

# 5.times do 
#   p "What are your favorite foods?"
#   food = gets.chomp
#   favorite_food << food
# end

# count = 0
# favorite_food.each do |food|
#   count += 1
#   p "#{count}. #{food}"
# end

# count = 0 

# 11.times do 
#   p count
#   count +=1 
# end
# result = false

# unless result 
#   puts "HELLO!"
# end

# sam_recipes = ["pasta", "crepes", "macandcheese", "taco ", "hamburger", "burrito"]
# sally_langauges = ["French", "English", "Chinese"]
# should_date = false
# should_marry = false

# if sam_recipes.size > 10 && sally_langauges.size > 5 
#   should_date = true
# elsif sam_recipes.include?("crepes") || sally_langauges.include?("French")
#   should_marry = true
# end

# p "should date #{should_date}"
# p "should marry #{should_marry}"

# bank = []
# 5.times do
#   customer = {}
#   p "Please enter your first name: "
#   first_name = gets.chomp
#   customer[:first_name] = first_name
#   p "Please enter your last name: "
#   last_name = gets.chomp
#   customer[:last_name] = last_name
#   p "Please enter your email: "
#   email = gets.chomp
#   customer[:email] = email
#   rand = Random.new
#   account_num = '%010d' % rand(10**10)
#   customer[:ACCT] = account_num
#   bank << customer
# end

# bank.each do |customer|
#   p "FIRST NAME: #{customer[:first_name]}"
#   p "LAST NAME: #{customer[:last_name]}"
#   p "EMAIL: #{customer[:email]}"
#   p "ACCT #: #{customer[:ACCT]}"
# end

# group_array = [] 
# more_students = true
# while(more_students)
#   group_of_kids = []
#   2.times do
#     p "Enter student's name: "
#     group_of_kids << gets.chomp
#   end 

#   group_array << group_of_kids
#   p "Do you have more students to enter?"
#   answer = gets.chomp.downcase
#   if answer == "yes"
#     more_students = true
#   else
#     more_students = false
#   end
# end

# group_array.each do |group|
#   p "Group: #{group[0]} #{group[1]}"
# end

# group_array = [] 
# more_students = true
# while(more_students)
#   group_of_kids = []
#   p "Do you have more students to enter?"
#   answer = gets.chomp.downcase
#   if answer == "yes"
#     more_students = true
#     p "Enter the kids name: "
#     group_of_kids << gets.chomp
#   else
#     more_students = false
#   end
# end


# group_array.each do |group|
#   p "Group: #{group[0]} #{group[1]}"
# end


array_of_kids = []
program_active = true

while program_active
  p "Enter your students names, enter 'quit' to finish"
  student = gets.chomp
  if student == "quit"
    program_active = false
  else
    array_of_kids << student
  end
end

groups = []
if array_of_kids.length.even?
  p "even number of kids"
else
  if array_of_kids.length == 3
    groups << array_of_kids
  end
  # array_of_groups.each_with_index do |kid, index|
  p "odd number of kids"
end

p groups










