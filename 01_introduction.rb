# *Ruby* overview:
# - Created by "Matz" in 1995
# - Super easy to pick up, @yukihiro_matz wanted a language that emphasizes human needs over those of computers, and created Ruby as close as possible to spoken english
# - 10 years later, in 2005, @dhh creates Ruby on Rails, an incredibly powerful framework ("extension" of a language) to build web applications
# - Today, Rails is used by a lot of famous companies like Github, Codecademy, Airbnb, and of course Le Wagon 😎
# - At Le Wagon we teach how to build any web app you can think of. This course is just about Ruby, but you can always learn more! Check the readme ⬅

# Let's see it in action!

# Puts/print
puts "--- Programming for everybody ---"
print "Welcome to Le Wagon, "
puts "this is the first lesson of the course"

puts "---"
puts "1. *Data types*:"
puts 'Hello from Ruby!'.class # String
puts 10.class # Integer (natural number)
puts 1.50.class # Float (decimal with a dot, not a comma!)
puts true.class # TrueClass (boolean)
puts false.class # FalseClass (boolean)
puts nil.class # NilClass (no content, not yet assigned!)

# Quickly:
# 1. Strings to describe text
# 2. Integers and floats for numbers
# 3. Booleans for conditions
# 4. Nil if there is nothing, is not assigned
# + many more!

# Collections:
array = ["a string", 1, "another string", true, nil, []]
puts array.class
# To find an element I must know the index (position - 1)!
# Print the third element (I MUST know the order!):
puts array[2]

hash = {
  key: "value",
  string: "a string",
  boolean: true
}
puts hash.class
# To print the third element (this time I have a key!):
puts hash[:boolean]

puts "---"
puts "2. **Math**"
print "Number? "
number = gets.chomp # don't chain other methods here!
number = number.to_i
puts "#{number} by 3 is #{number * 3}!"
print "Exponent? "
exponent = gets.chomp.to_i
puts "#{number} to the #{exponent} power is #{number**exponent}"
print "Divided by? "
divider = gets.chomp.to_i
modulo = number % divider # modulo = rest of a division
puts "#{number} divided by #{divider} is #{(number / divider).to_i}"
puts "The rest is #{modulo}"
print "String to multiply by #{number}? "
string_to_multiply = gets.chomp
puts string_to_multiply * number # you can also do math with strings!

puts "---"
puts "3. *Built-in methods*" # check the docs here -> https://devdocs.io and select Ruby
# Strings
print "A cool word? "
word = gets.chomp
puts "The length of #{word} is #{word.length}"
puts "If we reverse and make it all upcase, we get #{word.reverse.upcase}"
# Numbers
print "What's your favorite number? "
number = gets.chomp.to_i
puts "Is #{number} odd? #{number.odd?}"
puts "#{number.to_f} is more precise though!" # to_f = to float (decimal)!
