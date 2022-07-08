# *********************************************************************

# for each of the following output a value to the terminal using 'puts'
# the [array].inspect function will make this much tidier

# *********************************************************************

# 1.) create a array variable containing the first names of everyone on Sierra
# (that's Paul, Stephen, Mark, Adam, Sam, Amaal and Ged)
sierra_array = ["Paul", "Stephen", "Mark", "Adam", "Sam", "Amaal", "Ged"]

# 2.) order your array reverse alphabetically: Z to A
sierra_array_sorted = sierra_array.sort
print sierra_array_sorted
puts
# 3.) output the name at index 4 of the updated array
puts sierra_array_sorted[4]

# 4.) loop over your array and output the phrase
# "The name's Detective [name] Drebin, Sierra Squad" using each name in turn

def quote_4(name)
	"The name's Detective #{name} Drebin, Sierra Squad"
end

sierra_array_sorted.each {|i| puts "#{sierra_array_sorted.index(i)+1} :  #{quote_4(i)}"}

# 5.) using a map create a new array from your existing where each name is reversed and in all caps
array_q5=[]
sierra_array_sorted.map do |i|
array_q5 << i.reverse.capitalize
end

print array_q5
puts

# 6.) create a new array containing the names of the days of the week
# (try to use a function to achieve this rather than typing it out)
days_of_week = []
t = Time.new(2021,02)
1.upto(7) {|i| days_of_week << t.strftime("%A"); t = t+(60*60*24)}
puts
print days_of_week.join(" ") + "\n"
puts

# 7.) use this to create another array which cycles through the days of the week
# for thirty days starting with a sunday, loop over this and output each day in turn
thirty_days=[]
1.upto(30) {thirty_days << days_of_week.unshift(days_of_week.pop)}
thirty_days.flatten!
print thirty_days


# 8.) repeat 7 but after each Monday, Wednesday and Friday output "Happy Days"
# and after saturday output "what a day, Groovin' all week with you."

thirty_days.each do |i|
	puts "--**--"
	unless i == "Saturday"
		puts "#{i}, Happy Days" 
	else
		puts "#{i}, what a day, Groovin' all week with you." 
	end
end

# 9.) in one line transform the array [[2,1,3], [4,9,8], [76,-4,3]]
# into a one dimensional array containing the sum of each nested element.
array_q9 = []
[[2,1,3], [4,9,8], [76,-4,3]].each {|i| array_q9.append(i.sum)}
print array_q9
puts

# 10.) Make an array containing the elements "QA", "Dev", "Meetings" and "Making Cake"
# loop over your array containing the days of the week and for each select the next available 
# member of the squad to do each task. Output them in the form: 
# "[day_of_week]: [Task_1]: [name_1], [task_2]: [name_2], [task_3]: [name_3], [task_4]: [name_4]"

tasks = ["QA","Dev","Meetings","Making Cake"]
sierra_index = sierra_array.length - (sierra_array.length-1)
tasks_index = tasks.length - (tasks.length-1)

days_of_week.each do |i|
	puts "#{i} :   #{sierra_array[sierra_index]}  :  #{tasks[tasks_index]},"
	sierra_index < sierra_array.length ? sierra_index+=1 : sierra_index=0
	tasks_index < tasks.length ? tasks_index+=1 : tasks_index = 0 
end




