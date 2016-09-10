# Multidimensional array - an array made up of arrays

my_2d_array = [["a, b, c"], ["Hello World!"], [56, 98, 45, "Linh"]]

# Hashes - when we don't want go in order of 0-end of array; when we don't want to use numbers as indices
# Hashes - collection of key-value pairs

# Below is a hash literal notation - literally describing what you want in the hash
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

# Creating a hash using Hash.new

pets = Hash.new

# Adding to a hash using Hash.new

pets = Hash.new
pets["Bob"] = "dog"

# Accessing Hash Values

pets = {
    "Bob" => "dog"
}

puts pets["Bob"]

# Iterating Over arrays

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each do |language|
    puts language
end

# Iterating over multidimensional arrays

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do |sub_array|
    sub_array.each do | y |
        puts y
    end
end

# Iterating over hashes - need 2 placeholder values, each for key and value 

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |superhero, name|
    puts "#{superhero}: #{name}"
end



my_hash = {
        "Liverpool" => 12.90,
        "London" => 18.00,
        "Manchester" => 24.70
}

my_hash.each do |town, price|
    puts "#{town}: #{price}"
end















