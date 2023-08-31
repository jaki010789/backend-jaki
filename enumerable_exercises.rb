def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  
  inventory_list.each {|key, value| puts "#{key}, quantity: #{value}"}

end
fruit = { apples: 1, bananas: 3, oranges: 7 }

puts display_current_inventory(fruit)

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
 guesses.each_with_index{|item, number| puts "Guess ##{number +=1} is #{item}"}

end

guessest = ['cookies', 'cake', 'ice cream']
puts display_guess_order(guessest)

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map{|numberR| numberR.abs}

end

numberst= [0, -7, 14, -21]

puts find_absolute_values(numberst)


def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
 inventory_list.select{|key, value| value<4}

end

fruit = { apples: 1, peaches: 4, bananas: 3, oranges: 7 }

puts find_low_inventory(fruit)


def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson

  word_list.reduce({}) do |result, animal|
    result[animal] = animal.length
    result
  end
end

animals = ['cat', 'horse', 'rabbit', 'deer']
puts find_word_lengths(animals)

def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  drink_list.include?("coffee") || drink_list.include?("espresso")
end

drink_list = ["lemonade", "green tea", "coffee", "cappuccino", "espresso"]
puts coffee_drink?(drink_list) # => true

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  return guess_list.any? { |num| num == answer }
end

guess_list = [1, 2, 3, 4, 5]
answer = 3


def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  return year_list.all? { |year| year >= 2001 && year <= 2100 }
end

year_list = [2001, 2002, 2010, 2100]
if twenty_first_century_years?(year_list)
  puts "All of the years are in the 21st century."
else
  puts "Not all of the years are in the 21st century."
end

def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase

  return word_list.none? { |word| word.upcase == word }
end

word_list = ["Pepsi", "Coke", "Dr. Pepper"]

if correct_format?(word_list)
  puts "True"
else
  puts "False"
end

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)

  score_list.values.one?(perfect_score)
end
score_list = { "Marcelo" => 10, "Bob" => 8, "Kianny" => 10, "Pablo" => 15 }
perfect_score = 10
puts valid_scores?(score_list, perfect_score) # => true