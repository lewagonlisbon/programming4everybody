# **OOP = Object-Oriented Programming**
# Ruby is an *object-oriented language*
# As any other OOP language, it uses **objects** to store *attributes* and **methods** to store *behaviours*

# ATTRIBUTES = Objects
# +
# BEHAVIOURS = Methods

"Hello!".length # => the *method* length returns the *attribute* `6` of type `Integer`
4.even? # => returns `true`, of type `TrueClass`
teachers = [
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
] # => returns an `Hash`
get_flag = ->(teacher) { teacher[:country] } # another way to assign a `Proc` (a *block* of code contained in `def`-`end` or `{`-`}`)
flags = teachers.map(&get_flag) # pass the `Proc` to the method, returns an `Array` with 2 `String`s
puts flags # returns `nil` (`NilClass`) and sends the attribute to the console
