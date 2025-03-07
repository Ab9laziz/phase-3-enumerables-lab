# require 'pry'

# # this method returns an array of hashes, which we'll use in the other methods
# def spicy_foods 
#   [
#     { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
#     { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
#     { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
#   ]
# end

# # given an array of spicy foods, **return an array of strings**
# # with the names of each spicy food
# def get_names(spicy_foods)
#   # your code here
#   names=spicy_foods.map do |food|
#     food[:name]
#   end
#   names
# end

# # given an array of spicy foods, **return an array of hashes** 
# # where the heat level of the food is greater than 5
# def spiciest_foods(spicy_foods)
#   # your code here
#   hashes=spicy_foods.select do |food|
#     food[:heat_level]>5
#   end
#   hashes
# end

# # given an array of spicy foods, **output to the terminal**
# # each spicy food in the following format: 
# # Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# # HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# # "hello" * 3 == "hellohellohello"
# def print_spicy_foods(spicy_foods)
#   # your code here
#   spicy_foods.each do |food|
#     puts "#{food[:name]} (#{food[:cuisine]}) Heatlevel: #{ '🌶' * food[:heat_level]}"
#   end
# end

# # given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# # for the spicy food whose cuisine matches the cuisine being passed to the method
# def get_spicy_food_by_cuisine(spicy_foods, cuisine)
#   # your code here
#  cuisine= spicy_foods.find do |food|
#     food[:cuisine] == cuisine
#   end
#   cuisine
# end

# # Given an array of spicy foods, **return an array of hashes** 
# # sorted by heat level from lowest to highest

# # def sort_by_heat(spicy_foods)
# #   # your code here
# #   sorted=spicy_foods.sort do |food1,food2|
# #     food1[:heat_level] <=> food2[:heat_level]
# #   end
# #   sorted
# # end

# def sort_by_heat(spicy_foods)
#   # your code here
#   sorted=spicy_foods.sort_by do |food|
#     food[:heat_level]
#   end
#   sorted
# end

# # given an array of spicy foods, output to the terminal ONLY 
# # the spicy foods that have a heat level greater than 5, in the following format: 
# # Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# # HINT: Try to use methods you've already written to solve this!
# def print_spiciest_foods(spicy_foods)
#   # your code here
#   spicy_foods.each do |food|
#     if food[:heat_level] > 5
#         puts "#{food[:name]} (#{food[:cuisine]}) Heatlevel: #{ '🌶' * food[:heat_level]}"
#     end
# end

# # given an array of spicy foods, return an integer representing 
# # the average heat level of all the spicy foods in the array
# def average_heat_level(spicy_foods)
#   binding.pry
#   # your code here
#   heatlvl=spicy_foods.map do |food| 
#     food[:heat_level]
#   end
# end

# average_heat_level spicy_foods

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)  # your code here
  spicy_name = spicy_foods.map do |i| 
    i[:name]
  end
end


# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spiciest_array = spicy_foods.filter do |i|
    i[:heat_level] > 5
  end
end
# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  printed_array = spicy_foods.map do |i|
    "#{i[:name]} (#{i[:cuisine]}) | Heat Level: #{"🌶" * i[:heat_level]}"
  end
  puts printed_array
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |i|
    i[:cuisine] == cuisine
    end
end
# Given an array of spicy foodbinding.prys, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  sorted_by_heat_level = spicy_foods.sort do |user1, user2|
    if user1[:heat_level] ==user2[:heat_level]
      0
    elsif user1[:heat_level] < user2[:heat_level]
      -1 
    elsif user1[:heat_level] > user2[:heat_level]
      1
    end
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods(spicy_foods))
end
# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total = 0
  spicy_foods.sum do |i|
    total += i[:heat_level] 
  end
  total / spicy_foods.length
end