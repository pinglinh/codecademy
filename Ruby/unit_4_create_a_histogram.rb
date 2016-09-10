# Codecademy example

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }




# My example

puts "Please enter text: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |word|
    frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, count| # = stores the new value back into frequencies
    count
end

frequencies.reverse!

frequencies.each do |word, count|
    puts word + " " + count.to_s
end