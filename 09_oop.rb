# **OOP** Object-Oriented Programming

# Ruby is an *object-oriented language*
# As any other OOP language, it uses *objects* to store *attributes* and *methods* to store *behaviours*

# ATTRIBUTES = `Class`es (objects = data)
# +
# BEHAVIOURS = `method`s (functions = actions to create/read/update/delete data)

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

get_flags = ->(teacher) { teacher[:country] } # another way to assign a `Proc`, a.k.a block of code contained in `do end` or `{ }`)
# Old way: get_flag = Proc.new { |teacher| teacher[:country] }

# Let's pass the `Proc` to a method
# The most common are `:map` (returns the values) and `each` returns an `Array` with 2 `String`s
# `:map`
flags = teachers.map(&get_flags) # => ["🇵🇹", "🇮🇹"]

def get_italian_flag(array) # define a method
  get_italian_flag = ->(element) { element[:country] = "🇮🇹" }.first # Proc -> block of code to use with another method
  array.map(&get_italian_flag) # pass the `Proc` to the filter method, and return (implicit) the "🇮🇹" string
end

italian_flag = get_italian_flag(teachers) # call the method

puts italian_flag # returns `nil` (`NilClass`) and sends the attribute to the console

#####################################

# ClassName        # => mold
# class_instance   # => cake

# I could initialize any attribute with AttributeClass.new, the way we write them "text inside string", 1993 3.14 (number), true false (booleans), [1, 2] {a: 1, b: 2} (collections), it's just a CONVENTION

# general expression to keep/collect parameters, like in math
()

# strings
String.new
"hello"

# numbers
1993
3.14

# booleans
true
false

# collections
[ ]
{ }

# proc (nameless method/blocks of code)
->(param) { } # just convention!

# method: **Method.new does not exist** because it's a behaviour and not an attrbute
def a_method
end

# variables to assign all of this
name = "gabriele"

#####################################

# **Classes**

# ClassName                            # => mold
# instance = ClassName.new(attributes) # => cake, one unit of that class
# LeWagonTeacher(...) # => mold
# Mariana             # => cake

class LeWagonTeacher
  def initialize(name, age)
    # ATTRIBUTES
    # instance variables = data I want to keep
    @name = name.capitalize
    @age = age
  end

  def age
    @age # without the `return`!
  end

  # BEHAVIOURS
  def say_hello
    "Hello guys! I'm #{@name}, and I am #{@age} years old"
  end
end

gabriele = LeWagonTeacher.new("gabriele", 27)
my_age = gabriele.age
mariana.say_hello
puts "In 3 years I will be: #{my_age + 3}"
