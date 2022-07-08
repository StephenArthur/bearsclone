# *********************************************************************

# for each of the following output a value to the terminal using 'puts'

# *********************************************************************

# 1.) using the following Person class, create a new instance with your
# name and output a greeting including your full name

class Person
  attr_accessor :first_name, :last_name
  def initialize first_name, last_name
    self.first_name = first_name
    self.last_name = last_name
  end


  def full_name
    "#{first_name} #{last_name}"
  end
end

me = Person.new('Stephen','Arthur')
puts me.full_name

# 2.) modify the following Fencer class so that it inherits from Person
# create a new fencer called Inigo Montoya and output a threat

class Fencer < Person
  def threaten
    "Hello, my name is #{full_name}, you killed my father, prepare to die!"
  end
end

inigo = Fencer.new('Inigo','Montoya')
puts inigo.threaten

luke = Fencer.new('Luke','Skywalker')
puts luke.threaten

# 3.) Create a new class caled Swordfight which accepts two Fencers and has a method
# called 'fight' which outputs a threat from the first swordfighter and then randomly 
# outputs a winner's name, unless one of the fighters is called Inigo Montoya in which case
# he always wins. For extra credit, validate that the fencers have different names.

class Swordfight
  attr_accessor :fighter1, :fighter2
  
  def initialize f1, f2
    self.fighter1 = f1
    if f1.full_name != f2.full_name
       self.fighter2 = f2
    else
      raise StandardError.new('both fighters cannot be named the same')
    end
 
  end

  def fight
    fighter_array = [@fighter1,@fighter2]
    fightwinner = fighter_array[rand(0..1)]
    puts "...and the winner is #{fightwinner.full_name}"
  end

end

battle = Swordfight.new(luke, inigo)
battle.fight

#battle = Swordfight.new(inigo, inigo)


# 4.) using the following arrays of parameters and the map function, create arrays
# of Bears and Preserves - you may want to try using the Ruby splat operator * but 
# indexes also work.

# Pass these into the ShoppingList class.
# Complete the ShoppingList class print function to output a shopping list with name,
# number of jars and total price for each preserve

# If you get this far and finish without getting stuck, good job, find some additions to 
# the shopping list which will show off some skills. Examples might be aligned columns of figures or
# a summaries/grand totals line at the bottom 

bear_params = [
  ['Paddington', 'Marmalade', 2],
  ['Rupert', 'Jam', 1],
  ['Winnie', 'Hunny', 5]
]

preserve_params = [
  ['Jam', 1.9],
  ['Marmalade', 2.2],
  ['Hunny', 2.5]
]


class Bear
  attr_accessor :name, :favourite_preserve, :jars_required
  def initialize name, favourite_preserve, jars_required
    self.name = name
    self.favourite_preserve = favourite_preserve
    self.jars_required = jars_required
  end
end

class Preserve
  attr_accessor :name, :price_per_jar
  def initialize name, price_per_jar
    self.name = name
    self.price_per_jar = price_per_jar
  end
end

class ShoppingList
  attr_accessor :preserves, :bears

  def initialize preserves, bears
    self.preserves = preserves
    self.bears = bears
  end

  def prints
    list_output = []
    self.bears.each do |i| 
      list_output << i.name
      list_output << i.favourite_preserve
      self.preserves.select {|x| x.name.eql?(i.favourite_preserve); list_output << x.price_per_jar} 
      puts
      #list_output << preserve.price_per_jar
    end

    list_output
  end

end

bear_array = []
preserve_array = []

  bear_params.map do |i|
  bear_array << Bear.new(*i)
  end

  preserve_params.map do |i|
  preserve_array << Preserve.new(*i)
  end

#puts bear_array
#puts preserve_array

list = ShoppingList.new(preserve_array, bear_array)

print list.prints

