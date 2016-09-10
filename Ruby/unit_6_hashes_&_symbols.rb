matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |key, value|
    puts value
end


no_nil_hash = Hash.new("The key does no exist.") # if you don't want Ruby to return nil when calling a key that does not exist simple add this in parenthesis

# Symbols - there's only one copy of any paricular symbol at a given time 

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = []

strings.each do |s|
    s = s.to_sym # or use .intern 
    symbols.push(s)
end


# Old syntax for symbols and hash rocket
movies = {
    :harry_potter => 'Magical movie of a boy who lived.',
    :cinderella => 'A dream is a wish your heart makes.',
}

# New syntax for symbols and removal of hash rocket
movies = {
    harry_potter: 'Magical movie of a boy who lived.',
    cinderella: 'A dream is a wish your heart makes.',
}


# Selecting specific values

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select do |name, rating|
    rating > 3
end

# When you want to iterate over just keys or just values
# Use .each_key or .each_value

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

movie_ratings.each_key do |name|
    puts name, " "
end