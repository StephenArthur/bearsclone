# *********************************************************************

# for each of the following output a value to the terminal using 'puts'

# *********************************************************************

# calculations:
# 1.) assign a variable called 'x', set its value to be 10
puts x = 10
# 2.) assign a variable called 'y', set its value to be 5
puts y = 5
# 3.) x plus y
puts x + y
# 4.) x mius y
puts x - y 
# 5.) y to the power of x
puts y**x
# 6.) x squared minus y squared plus two times x plus y
puts ((x**x) - y) + ((x*2) + y)
# *********************************************************************

# strings:

# 7.) assign a variable called name, set its value to be your name
name = "Stephen"
# 8.) assign a variable called age, set its value to be your age
age = 32
# 9.) using string concatenation output the phrase
# "Hi! my name is Sam and I'm 33 years old." but using your name and age
puts "Hi! my name is " + name + " I'm " + age.to_s + " years old "
# 10.) using string interpolation output the phrase
puts "Hi! my name is #{name} and I'm #{age} years old"
# "In 2 years time Sam will be 35 years old" but substituting your name and age
puts "In 2 years time #{name} will be #{(age + 2).to_s} years old"
# 11.) assign a new variable to the phrase "I'm sorry, I can't splell very well"
string11 = "I'm sorry I can't splell very well"
# 12.) using a string function to find and replace, correct the spelling mistake
puts string11.sub('sple','spe')
# 13.) convert the string to all caps
puts string11.sub('sple','spe').upcase
# 14.) using ruby's string docs:
# find a method which will reduce duplicate characters and convert the phrase
# "HHHHHHHHHEEEEEEELLLLLPPPPPP, IIIII'MM MEEEEEEEEELLLLTTTTTTIIIING" into valid english
new_string = "HHHHHHHHHEEEEEEELLLLLPPPPPP, IIIII'MM MEEEEEEEEELLLLTTTTTTIIIING".squeeze!
puts new_string
# 15.) using ruby's string docs:
# find a method which will output true if the resulting phrase contains the word "HELP"
puts new_string.include?('HELP')
# *********************************************************************

# booleans/conditionals - output status after each with "puts status"
status = ""

def check_for_sum(v1, v2, answer)
	(v1+v2) == answer
end
# 16.) write a conditional which will assign a variable called status to be "ok" if x + y = 15
check_for_sum(x,y,15) ?  status="ok" : status="nope"
puts status
# 17.) write a conditional which will set status to 'danger' if the condition in 15 is true

new_string.include?('HELP') ? status="danger" : status="nope"
puts status
# 18.) write a conditional which will set status to be 'unknown' if either condition in 16 and 17 is false
if check_for_sum(x,y,15) || new_string.include?('HELP')
status = 'unknown'
end
puts status 
# 19.) write a conditional which sets status to be "number" if:
# one equals two OR three equals the length of the string "abc" but NOT if "xyz"[2] equals "z"
def is_19_true?
(1 == 2 || 3 == 'abc'.length) && ('xyz'[2] != 'z')
end
puts "is 19 true? = #{is_19_true?}"

def method_19
	if is_19_true?
			value = 'number'
	end
	value
end
status = method_19
 puts ('xyz'[2] != 'z')
 puts "----"
 puts status
# 20.) assign the boolean expressions for the last 4 questions to variables and 
# if all the variables evaluate to true set status to "Truth is beauty and beauty truth"
string20 = "Truth is beauty and beauty truth"
includes_help = new_string.include?('HELP')
xplusy_equalto_15 = check_for_sum(x,y,15)
is_19_true = is_19_true?

def question_20(q1, q2, q3)
	q1 && q2 && q3 ? true : false
end

puts question_20(includes_help, xplusy_equalto_15, is_19_true)

# bonus.) if you haven't already done so, refactor the preceding questions so that 
# each boolean expression is only defined in one place