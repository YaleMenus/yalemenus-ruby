require './lib/yalemenus'

# See the README for further instructions.

halls = YaleMenus.halls
puts "There are #{halls.length} dining halls available."

hall = YaleMenus.hall('GH')
puts "The Grace Hopper dining hall is located at #{hall['address']}."

meals = YaleMenus.hall_meals('JE', date: Date.new(2022, 2, 24))
puts "There are #{meals.length} meals being served on 2022-02-24."

items = YaleMenus.meal_items(meals[0]['id'])
puts "The first item in the first of those meals is #{items[0]['name']}."

buttery = YaleMenus.buttery('GH')
puts "The Grace Hopper buttery has the following data:"
puts buttery
