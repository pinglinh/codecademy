# Codecademy example

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end


# My example

movies = {
    Harrypotter: 5,
    Cinderella: 3,
    Batman: 3,
    Spiderman: 4,
}

puts "Please enter \n add (to add a movie) \n update (to update movie) \n display (to display movies) \n delete (to delete a movie)"

choice = gets.chomp

case choice
when "add"
    puts "Please enter the movie title (do not add any spaces): "
    title = gets.chomp
    title.capitalize!
    if movies[title.to_sym].nil?
        puts "Please give the movie a rating (0 = worst, 5 = best): "    
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts "The movie already exists with a rating of #{movies[title.to_sym]}."
    end 
when "update"
    puts "Please enter the movie title: "
    title = gets.chomp
    title.capitalize!
    if movies[title.to_sym].nil?
        puts "This movie is not on the database! Please add this movie instead."
    else
        puts "Please enter new rating for this movie: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Please enter the movie you would like to delete: "
    title = gets.chomp
    title.capitalize!
    if movies[title.to_sym].nil?
        puts "This movie is not in the databse!"
    else
        movies.delete(title)
        puts "#{title} has been deleted."
    end
else
    puts "Error!"
end




# Old code

movies = {
    "Harry Potter" => 5,
}

puts "Type 'add' to add movie."
puts "Type 'update' to update."
puts "Type 'display' to display movies."
puts "Type delete to remove movies."

choice = gets.chomp

case choice
when "add"
    puts "Please input the name of the movie."
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What is your rating on this movie? 0 worst and 5 best."
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts 'The movie already exists with a rating of #{movies[title.to_sym]}'
    end
when "update"
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title].nil?
        puts "This movie has not been found!"
    else
        puts "What is the new rating? 0 worst and 5 best."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been changed to #{rating}."
    end
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end




movies = {
    "Harry Potter" => 5,
}

puts "Type 'add' to add movie."
puts "Type 'update' to update."
puts "Type 'display' to display movies."
puts "Type delete to remove movies."

choice = gets.chomp

case choice
when "add"
    puts "Please input the name of the movie."
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "What is your rating on this movie? 0 worst and 5 best."
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts 'The movie already exists with a rating of #{movies[title.to_sym]}'
    end
when "update"
    puts "What movie do you want to update?"
    title = gets.chomp
    if movies[title].nil?
        puts "This movie has not been found!"
    else
        puts "What is the new rating? 0 worst and 5 best."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been changed to #{rating}."
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end    
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end









movies = {
    "Harry Potter" => 5,
    "Cinderella" => 4,
}

puts "Type 'add' to add movie."
puts "Type 'update' to update."
puts "Type 'display' to display movies."
puts "Type delete to remove movies."

choice = gets.chomp

case choice
when "add"
    puts "Please input the name of the movie."
    title = gets.chomp
    if 
        movies[title.to_sym].nil?
        puts "What is your rating on this movie? 0 worst and 5 best."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts 'The movie already exists with a rating of #{movies[title.to_sym]}'
    end
when "update"
    puts "What movie do you want to update?"
    title = gets.chomp
    if
        movies[title].nil?
        puts "This movie has not been found!"
    else
        puts "What is the new rating? 0 worst and 5 best."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been changed to #{rating}."
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end    
when "delete"
    puts "What is the title of the movie you would like to delete?"
    title = gets.chomp
    if
        movies[title.to_sym].nil?
        puts "This movie has not been found!" 
    else
        movies.delete(title.to_sym)
        puts "#{movie} has been deleted."
    end
end


















# FULL OLD CODE

movies = {
    "Harry Potter" => 5,
    "Cinderella" => 4,
}

puts "Type 'add' to add movie."
puts "Type 'update' to update."
puts "Type 'display' to display movies."
puts "Type delete to remove movies."

choice = gets.chomp

case choice
when "add"
    puts "Please input the name of the movie."
    title = gets.chomp
    if 
        movies[title.to_sym].nil?
        puts "What is your rating on this movie? 0 worst and 5 best."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}"
    else
        puts 'The movie already exists with a rating of #{movies[title.to_sym]}'
    end
when "update"
    puts "What movie do you want to update?"
    title = gets.chomp
    if
        movies[title].nil?
        puts "This movie has not been found!"
    else
        puts "What is the new rating? 0 worst and 5 best."
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been changed to #{rating}."
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end    
when "delete"
    puts "What is the title of the movie you would like to delete?"
    title = gets.chomp
    if
        movies[title.to_sym].nil?
        puts "This movie has not been found!" 
    else
        movies.delete(title.to_sym)
        puts "#{movie} has been deleted."
    end
end