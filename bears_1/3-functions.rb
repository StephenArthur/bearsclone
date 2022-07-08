# *********************************************************************

# for each of the following output a value to the terminal using 'puts'

# *********************************************************************

# 1.) Complete the following method  and then call it to return the sum of 345 and 578

def sum number_1, number_2
  number_1 + number_2
end

puts sum(345, 578)

# 2.) write a function which sums up all elements in an array of numbers except the third element.

def sum_all_but_third array 
  a = 0
  array.each do |i|  
    unless array.index(i) == 2 
      a = a+i
    else
      a
    end
  end
  a
end

puts sum_all_but_third([1,2,500,10,500])


# 3.) The following function takes a first name as a parameter and outputs a
# greeting. Extend it to accept a second name and inlude it in the output.
# run the function using your name and output the result.

def greeting first_name, second_name
  "Hello #{first_name} #{second_name}, welcome to Sage"
end

def greeting_fr first_name, second_name
  "Bonjour #{first_name} #{second_name}, bienvenue sur Sage"
end

def greeting_de first_name, second_name
  "Hallo #{first_name} #{second_name}, willkommen bei Sage"
end


puts greeting("Buzz","Lightyear")

# 4.) Write a new function called multilingual_greeting which accepts a first_name,
# a last_name and a language from one of the following "english", "german", and "french"
# and outputs a greeting in the appropriate language (use google translate if you need it)

def multilingual_greeting first_name, last_name, options={}
  languages = ['english','german','french']
  name1=first_name
  name2=last_name
  lang = options[:lang] || 'english'
  unless languages.include?(lang)
   raise StandardError.new("invalid language")
  end

  if lang == languages[0] #english
    greeting(name1, name2)
  elsif lang == languages[1]
    greeting_de(name1, name2) #german
  elsif lang == languages[2] #french
    greeting_fr(name1, name2)
  end
end
  
puts multilingual_greeting("Bob","Ben",{lang: "english"})
puts "----"
puts multilingual_greeting("Bob","Ben",{lang: "german"})
puts "----"
####multilingual_greeting("Bob","Ben",{lang: "eng"})

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


def sentence_strip sentence
  sentence_array = sentence.split(' ')
  1.upto(sentence_array.length) do |i|
    puts sentence_array.join(' ')
    sentence_array.pop
  end
end

sentence_strip(tale_of_two_cities)

