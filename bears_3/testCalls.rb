load 'main.rb'

terrible = {
  set_of_1s: [1,2,2,3,4],
  set_of_2s: [1,2,2,3,4],
  set_of_3s: [1,2,2,3,4],
  set_of_4s: [1,2,2,3,4],
  set_of_5s: [1,2,2,3,4],
  set_of_6s: [1,2,2,3,4],
  three_of_a_kind: [1,2,3,4,5],
  four_of_a_kind: [1,2,3,4,5],
  full_house: [1,2,3,4,5],
  short_straight: [2,2,3,6,5],
  long_straight: [1,1,3,2,5],
  yahtzee: [6,1,6,2,6],
  chance: [1,1,1,1,2]  
}
average = {
  set_of_1s: [1,3,1,2,4],
  set_of_2s: [1,3,1,2,4],
  set_of_3s: [1,3,1,2,4],
  set_of_4s: [1,3,1,2,4],
  set_of_5s: [5,5,5,5,5],
  set_of_6s: [6,6,6,6,6],
  three_of_a_kind: [2,2,2,4,5],
  four_of_a_kind: [2,2,3,4,5],
  full_house: [2,2,3,3,3],
  short_straight: [2,2,3,4,5],
  long_straight: [1,2,3,4,5],
  yahtzee: [2,2,3,4,5],
  chance: [2,2,3,4,5]  
}
fantastic = {
  set_of_1s: [1,1,1,1,1],
  set_of_2s: [2,2,2,2,2],
  set_of_3s: [3,3,3,3,3],
  set_of_4s: [4,4,4,4,4],
  set_of_5s: [5,5,5,5,5],
  set_of_6s: [6,6,6,6,6],
  three_of_a_kind: [6,6,6,6,6],
  four_of_a_kind: [6,6,6,6,6],
  full_house: [6,6,6,5,5],
  short_straight: [2,2,3,4,5],
  long_straight: [1,2,3,4,5],
  yahtzee: [6,6,6,6,6],
  chance: [6,6,6,6,6]  
}
brokenNumbers = {
  set_of_1s: [10,11,12,13,14],
  set_of_2s: [10,11,12,13,14],
  set_of_3s: [-3,3,-3,3,3],
  set_of_4s: [4,4,4,4,4],
  set_of_5s: [5,5,5,5,5],
  set_of_6s: [6,6,6,6,6],
  three_of_a_kind: [6,6,6,6,6],
  four_of_a_kind: [6,6,6,6,6],
  full_house: [6,6,6,5,5],
  short_straight: [2,2,3,4,5],
  long_straight: [1,2,3,4,5],
  yahtzee: [-10,-10,-10,-10,-10,],
  chance: [-60000,6,6,6,6]  
}
brokenArrayTypes = {
  set_of_1s: ["Hello World", 2, 3, 4, 5],
  set_of_2s: ["potato", "olive", "aubergine", "banana", "apple"],
  set_of_3s: ["Three", "Three", "Three", "Three", "Three"],
  set_of_4s: ["4","4","4","4","4"],
  set_of_5s: [5,5,5,5,5],
  set_of_6s: [6,6,6,6,6],
  three_of_a_kind: [6,6,6,6,6],
  four_of_a_kind: [6,6,6,6,6],
  full_house: [6,6,6,5,5],
  short_straight: [2,2,3,4,5],
  long_straight: [1,2,3,4,5],
  yahtzee: [6,6,6,6,6],
  chance: [6,6,6,6,6]
}
invalidScorecard = {
  set_of_dice: [
    one: [1,3,1,2,4],
    two: [1,3,1,2,4],
    three: [1,3,1,2,4],
    four: [1,3,1,2,4],
    five: [1,3,1,2,4],
    six: [1,3,1,2,4],
  ],
  three_of_a_kind: [6,6,6,6,6],
  four_of_a_kind: [6,6,6,6,6],
  full_house: [6,6,6,5,5],
  short_straight: [2,2,3,4,5],
  long_straight: [1,2,3,4,5],
  yahtzee: [6,6,6,6,6],
  chance: [6,6,6,6,6]

}

puts ""
puts "A terrible test score of : 18"
puts ""

terribleX = YahtSco.new(terrible)
terribleX.three_of_a_kind
terribleX.do_a_thing
puts ""
puts "An average test score of : 327"
puts ""

averageX = YahtSco.new(average)
averageX.do_a_thing

puts ""
puts "A fantastic test score of : 1175"
puts ""

fantasticX = YahtSco.new(fantastic)
fantasticX.do_a_thing

puts ""
puts "A brokenNumbers test score of : -59252"
puts ""

brokenNumbersX = YahtSco.new(brokenNumbers)
brokenNumbersX.three_of_a_kind
brokenNumbersX.do_a_thing

puts ""
puts "A brokenArrayTypes test score of : 890"
puts ""

brokenArrayTypesX = YahtSco.new(brokenArrayTypes)
brokenArrayTypesX.three_of_a_kind
brokenArrayTypesX.do_a_thing

brokenArrayTypesX.yahtzee_bonus
brokenArrayTypesX.chance
brokenArrayTypesX.yahtzee
brokenArrayTypesX.long_straight
brokenArrayTypesX.short_straight
brokenArrayTypesX.full_house
brokenArrayTypesX.four_of_a_kind
brokenArrayTypesX.three_of_a_kind
brokenArrayTypesX.score_6s
brokenArrayTypesX.score_3s
brokenArrayTypesX.do_a_thing


puts ""
puts "An incomplete scorecard test that can still run some methods:"
puts ""
brokenArrayTypesX = YahtSco.new(invalidScorecard)

brokenArrayTypesX.chance
brokenArrayTypesX.yahtzee
brokenArrayTypesX.long_straight
brokenArrayTypesX.short_straight
brokenArrayTypesX.full_house
brokenArrayTypesX.four_of_a_kind
brokenArrayTypesX.three_of_a_kind
