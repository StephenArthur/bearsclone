# *********************************************************************

# for each of the following output a value to the terminal using 'puts'

# *********************************************************************

# 1.) Complete the following method  and then call it to return the sum of 345 and 578

def sum number_1, number_2
end

# 2.) write a function which sums up all elements in an array of numbers except the third element.

# 3.) The following function takes a first name as a parameter and outputs a
# greeting. Extend it to accept a second name and inlude it in the output.
# run the function using your name and output the result.

def greeting first_name
  "Hello #{first_name}, welcome to sage"
end

# 4.) Write a new function called multilingual_greeting which accepts a first_name,
# a last_name and a language from one of the following "english", "german", and "french"
# and outputs a greeting in the appropriate language (use google translate if you need it)
# 4 bonus.) if a language other than that is passed in, raise an exception stating 'invalid language'
# you've not been shown raising errors but this should help http://rubylearning.com/satishtalim/ruby_exceptions.html


# 5.) Write a function which, given a string of text will output the string then
# delete the last word and then call itself on the resulting string stopping once
# the string is empty. Call the function on the string below.
# 
# the first three outputs should be:
# "It was the best of times, it was the worst of times."
# "It was the best of times, it was the worst of"
# "It was the best of times, it was the worst"

tale_of_two_cities = "It was the best of times, it was the worst of times."