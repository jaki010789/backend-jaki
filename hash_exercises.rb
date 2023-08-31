
# def create_favorite_hash(color, number)
#   # return a hash with the following key/value pairs:
#   # key of color (as a symbol) with value of the color argument
#   # key of number (as a symbol) with the value of the number argument
#   fav_hash={

#   :key=> number,
#   :value=> color
#   }
# fav_hash
# end

# puts create_favorite_hash("pink", 1)

# def favorite_color(favorite_list)
#   # return the value of the color key
# favorite_list[:color]
# end

# color_list={
#   :color=> "blue",
#   :number=> 43

# }

# puts favorite_color(color_list)



# def favorite_number(favorite_list)
#   # use #fetch to return the value of the number key or 42 if the key is not found

#   favorite_list.fetch(:key00, 42)
# end

# hash2={
#   key0: "pink",
#   key1: "yellow",
#   key2: "green"

# }

# puts favorite_number(hash2)

# def update_favorite_movie(favorite_list, movie)
#   # Step 1: add/update the key of movie (as a symbol)
#   favorite_list[:movie] = movie

#   # Step 2: return the hash (because Step 1 returns the value of the movie key)
#   favorite_list
# end

# hash_movie={
#   :color => "green",
#   :number => 2
# }

# puts update_favorite_movie(hash_movie, "Lilo y Stich")

# def remove_favorite_number(favorite_list)
#   # Step 1: delete the number data
#   puts "este número ha sido borrado: #{favorite_list["number"]}"
#   favorite_list.delete(:number)

#   # Step 2: return the hash (because Step 1 returns the value of the number key)
#   favorite_list
# end

# puts remove_favorite_number(hash_movie)

# def favorite_categories(favorite_list)
#   # return the keys of favorite_list
# favorite_list.keys
# end

# categories ={
#   :food => "hamburguesa",
#   :deporte => "futbol",
#   :hobby => "cantar"
# }

# puts favorite_categories(categories)

# def favorite_items(favorite_list)
#   # return the values of favorite_list
# favorite_list.values

# end
# categories ={
#   :food => "hamburguesa",
#   :deporte => "futbol",
#   :hobby => "cantar"
# }

# #  puts favorite_items(categories)

# def merge_favorites(original_list, additional_list)
#   # merge the two hashes: original_list and additional_list

#   original_list.merge!(additional_list)

# end

# list_1={
#   :car=>"hyundai",
#   :house=>"penthouse",
#   :animal=>"tigger"
# }

# list_2={
#   :food=>"cake",
#   :movie=>"yes,Sr!"
# }

# puts merge_favorites(list_1,list_2)


