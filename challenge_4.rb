# Challenge 4:
# Build a food ordering system where the user inputs the food name into the food order and then the order gets
# passed to the appropriate restaurant on a list and the restaurant prints the receipt on stdout. No need to create a
# UI, a main function that receives parameters is enough.
# For example:
#  Input: “pepperoni pizza”
#  Output: "Awesome pizza place, pepperoni pizza, $20”
# For example:
#  Input: “burger”
#  Output: “wild burger joint, burger, $15”

RESTAURANTS = [
  {
    food_name: "pepporoni pizza",
    restaurant_name: "Awesome pizza place",
    price: 20
  },
  {
    food_name: "burger",
    restaurant_name: "wild burger joint",
    price: 15
  }
]
def restaurant(food_name)
  found = false
  RESTAURANTS.each do |food|
    # We could also use food[:food_name].include?(food_name) if the user wants to type only pizza
    if food[:food_name] == food_name
      puts "#{food[:restaurant_name]}, #{food[:food_name]}, $#{food[:price]}"
      found = true
    end
  end
  puts 'Restaurant not avalible for the food you ordered.' unless found
end

def user_input
  puts "What would you like to order?"
  input = gets.chomp
  restaurant(input)
end

choice = 'yes'
while choice.downcase == 'yes'
  user_input
  puts 'would you like to order again (yes/no)'
  choice = gets.chomp
end
puts 'See you later, have a nice day'
