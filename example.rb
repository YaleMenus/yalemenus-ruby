require './lib/yalemenus'

# See the README for further instructions.

halls = YaleMenus.halls
puts "There are #{halls.length} dining halls available."

hall = YaleMenus.hall('GH')
puts "The Grace Hopper dining hall is located at #{hall['address']}."
