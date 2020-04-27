# OOP Object-Oriented Programming

# Ruby is an object-oriented language
# As any other OOP language, it uses *objects* to store *attributes* and *methods* to store *behaviours*

# ATTRIBUTES = `Class`es (objects = data)
# +
# BEHAVIOURS = `method`s (functions = actions to create/read/update/delete data)

# 1. Attributes

"Hello!".length # => I apply the method length on a string, and it returns the attribute `6` of type `Integer`
4.even? # => returns `true`, an attribute of type `TrueClass` (a method with a question mark returns a boolean, it's convention! check https://rubyonrails.org/doctrine/#convention-over-configuration)


teachers = [ # => returns the variable `teachers`: an `Array` with inside two `Hash`es
  {
    name: "Mariana",
    age: 37,
    country: "🇵🇹"
  },
  {
    name: "Gabriele",
    age: 27,
    country: "🇮🇹"
  }
]

get_flags = Proc.new { |teacher| teacher[:country] }
get_flags = ->(teacher) { teacher[:country] } # another faster way to assign a `Proc`, a.k.a block of code contained in `do end` or `{ }`

# 2. Behaviours

# Let's pass the proc to a method
# The most common methods for a collection:
# - :map  -> returns the values
# - :each -> return always nil, but it can execute some other methods (actions) while looping

puts teachers.each(&get_flags) # => nil, but I see it in the console
flags = teachers.map(&get_flags) # => ["🇵🇹", "🇮🇹"]

# Custom method
def get_italian_flag(array)
  get_italian_flags = ->(element) { element[:country] = "🇮🇹" } # another proc/lambda
  array.filter(&get_italian_flags).first # pass the proc to the filter method, and return (implicitly!) the "🇮🇹" string
end

italian_flag = get_italian_flag(teachers) # call the method and get the string
puts italian_flag # => nil

#####################################

# Classes

# Syntax:
# - ClassName    => the 'mold'
# - class_object => the 'cake'

# I can initialize any object (and 'label' it with a variable) with ObjectClassName.new, except for booleans and numbers (it's too intuitive!)
[true, false] # booleans = [TrueClass, FalseClass]
[1993, 3.14]  # numbers  = [Integer, Float]
"hello there" # String.new("hello there")
[]            # Array.new
{}            # Hash.new
->(param) {}  # blocks = [Proc.new { |param| }, lambda { |param| }]

# There are a lot of pre-defined, let's print them all!
puts ObjectSpace.each_object(Class) { |object| puts object }

# Store the welcome file here! ;)
welcome_file = File.new("test/welcome.rb")

# Methods
# Method.new does not exist because it's a *behaviour* and not an attrbute
def say_hello
  puts "hello"
end

def return_hello
  puts "I'm another string"
  "hello" # implicit return
end

hello_string = return_hello
puts hello_string

#####################################

# *Classes*

# What if I want my own class with its own attributes and the behaviours I want?

# Syntax:
# ClassName                            # => mold
# instance = ClassName.new(attributes) # => cake, one unit of that class

# Place it in one file with the same name (you need to convert UpperCamelCase syntax to lower_snake_case)
require_relative "test/teacher.rb" # require is reserved for gems (what is a gem?) and file systems, so we need to do it relatively to where we are

attributes = {
  name: "gabriele",
  age: 26,
  country: "italy"
}
gabriele = Teacher.new(attributes)
mariana  = Teacher.new(name: "mariana", country: "portugal")
print_teacher_welcome_message = ->(teacher) { puts teacher.welcome_message }
[gabriele, mariana].each(&print_teacher_welcome_message)
gabriele.birthday
puts gabriele.age # => 27
