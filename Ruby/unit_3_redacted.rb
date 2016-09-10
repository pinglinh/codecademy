puts "Input your text"
text = gets.chomp

puts "Input your word to be redacted"
redact = gets.chomp

words = text.split (" ")

words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end