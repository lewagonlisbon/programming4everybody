# *Blocks recap*

names = ["mariana", "gabriele", "shannon"]

names.each do |name|
  # Everything inside here is the *block*!
  reversed_name = name.reverse
  puts reversed_name.upcase
end

# A new powerful method: `map`
# same as `collect` (less common), it modifies each element of a collection

names.map { |name| name.upcase }
puts names
# Nothing happened, because `map` returns just a copy of the original collection, it doesn't modify it!

# I should assign this copy to a new variable
upcase_names = names.map { |name| name.upcase }
puts upcase_names
# or add `!` to the method to modify the original collection (a method with the `!` is a *destructive method*, because it alters the state of the original object)
names.map! { |name| name.upcase }
puts names # it changed!

#############################

# *Yield*
# Use it when you want your method to accept a block

def print_welcome_message
  puts "Welcome to today's lesson!"
  yield
end

print_welcome_message do
  # Everything inside here will replace the yield above!
  puts "Today the teachers are Mariana and Gabriele"
  puts "We'll talk about yield, procs, lambdas, and other cool stuff!"
end

# What if I don't give a block?
print_welcome_message # => 'no block given' error!

# But there's a solution! Just use `yield if block_given?`
def print_welcome_message
  puts "Welcome to today's lesson!"
  yield if block_given?
end

print_welcome_message # no error!

# I can also pass parameters to the yield:
def print_welcome_message(teacher_name)
  puts "Welcome to today's lesson!"
  yield(teacher_name) if block_given?
end

print_welcome_message("gabriele") do |name| # here I have the same variable ("gabriele") available as a parameter (I called it `name`, but it's arbitrary)!
  puts "Today's teacher is #{name.upcase}"
end

#############################

# *Procs*
# Use them to assign a block to a variable

def print_welcome_message
  puts "Welcome to today's lesson!"
  yield if block_given?
end

today_lecture = Proc.new do
  puts "Today's teachers are Mariana and Gabriele"
  puts "We'll talk about procs and lambdas!"
end

# Pass the proc (so, the block!) with this syntax:
print_welcome_message(&today_lecture)

# A proc can also be called without relating it to a method, just use the `call` method on the same proc!
today_lecture.call

# Other example: print even numbers

numbers = (1..100).to_a

numbers.each { |n| puts n if n.even? } # this block could be reused, let's make it a proc!
# will become
print_if_even = Proc.new { |n| puts n if n.even? }
numbers.each(&print_if_even)

#############################

# *Procs and symbols*
# In Ruby, we can pass a method name (name, not the whole method!) with a symbol
# This symbol can be easily turned into a proc!

names = ["mariana", "gabriele"]
names.map! { |name| name.upcase } # let's make `upcase` a proc
names.map!(&:upcase)
puts names

#############################

# *Lambdas*
# Same as procs, except for some small differences

def print_welcome_message
  puts "Welcome to today's lesson!"
  yield if block_given?
end

today_lecture = lambda do # just a different keyword!
  puts "Today's teachers are Mariana and Gabriele"
  puts "We'll talk about procs and lambdas!"
end

print_welcome_message(&today_lecture)

# Differences with procs:

# 1. Lambdas check the number of arguments, procs don't
my_proc = Proc.new { |x, y| puts "I don't care about arguments!" }
my_proc.call

my_lambda = lambda { |x, y| puts "I will return an error if you don't give me the right arguments! 🤬" }
my_lambda.call # => 'wrong number of arguments' error! I should pass 2 arguments, x and y

# 2. When they return, lambas don't interrupt the execution of a method after the `call`, procs do
def lambda_method
  my_lambda = lambda { return "Call me, and then do other stuff :)" }
  my_lambda.call # it doesn't stop here!
  "You just called the lambda, but I'm not a lambda!"
end

def proc_method
  my_proc = Proc.new { return "Call me, and I'll stop the method here!" }
  my_proc.call # it stops here!
  "This text will never be printed :("
end

puts lambda_method
puts proc_method

#############################

# Some other examples:

# Proc returning student's grades below 10

students_grades = [10, 15, 5, 4, 19, 14, 2, 7, 13]

under_10 = Proc.new { |grade| grade < 10 } # I could use a lambda, it would be the same!

low_grades = students_grades.select(&under_10)
puts low_grades

# Lambda returning only the symbols inside an array

names = ["mariana", :gabriele, "shannon"]

filter_symbols = lambda { |x| x.is_a? Symbol } # I could use a proc, it would be the same!

symbols = names.select(&symbol_filter)
puts symbols
