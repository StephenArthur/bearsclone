class YahtSco
  attr_reader :scorecard
  def initialize(scorecard)
    @scorecard = scorecard
  end

  # This is not a good start.
  def do_a_thing
    puts '****************************************'
    total_score = 0
    total_score += score_1s
    total_score += score_2s
    total_score += score_3s
    total_score += score_4s
    total_score += score_5s
    total_score += score_6s
    if total_score > 63
      puts 'your score earns you a bonus of 35!'
      total_score += 35
    end
    puts '----------------------------------------'
    puts 'your upper score is ' + total_score.to_s
    puts '****************************************'
    lower_score = 0
    lower_score += three_of_a_kind
    lower_score += four_of_a_kind
    lower_score += full_house
    lower_score += short_straight
    lower_score += long_straight
    lower_score += chance
    lower_score += yahtzee
    lower_score += yahtzee_bonus
    puts '----------------------------------------'
    puts 'your lower score is ' + lower_score.to_s
    total_score = total_score + lower_score
    puts '****************************************'
    puts 'your total score is ' + total_score.to_s
    puts '****************************************'
  end
  # I've told you a million times not to repeat yourself 
  def score_1s
    puts 'for your 1s you score: ' + scorecard[:set_of_1s].select { |n| n == 1 }.sum.to_s
    scorecard[:set_of_1s].select { |n| n == 1 }.sum
  end
  def score_2s
    puts 'for your 2s you score: ' + scorecard[:set_of_2s].select { |n| n == 2 }.sum.to_s
    scorecard[:set_of_2s].select { |n| n == 2 }.sum
  end
  def score_3s
    puts 'for your 3s you score: ' + scorecard[:set_of_3s].select { |n| n == 3 }.sum.to_s
    scorecard[:set_of_3s].select { |n| n == 3 }.sum
  end
  def score_4s
    puts 'for your 4s you score: ' + scorecard[:set_of_4s].select { |n| n == 4 }.sum.to_s
    scorecard[:set_of_4s].select { |n| n == 4 }.sum
  end
  def score_5s
    puts 'for your 5s you score: ' + scorecard[:set_of_5s].select { |n| n == 5 }.sum.to_s
    scorecard[:set_of_5s].select { |n| n == 5 }.sum
  end
  def score_6s
    puts 'for your 6s you score: ' + scorecard[:set_of_6s].select { |n| n == 6 }.sum.to_s
    scorecard[:set_of_6s].select { |n| n == 6 }.sum
  end

  # 11 lines to count to 3 seems excessive
  def three_of_a_kind
    score = 0
    count = 0
    scorecard[:three_of_a_kind].each do |n|
      if scorecard[:three_of_a_kind].select{ |n2| n2 == n }.count > count
        count = scorecard[:three_of_a_kind].select{ |n2| n2 == n }.count
      end
    end
    if count > 2
      score = scorecard[:three_of_a_kind].sum
    else
      score = 0
    end
    puts 'for your 3 of a kind you score: ' + score.to_s
    score
  end

  # I refer you to my previous comment
  def four_of_a_kind
    score = 0 
    count = 0
    scorecard[:four_of_a_kind].each do |n|
      if scorecard[:four_of_a_kind].select{ |n2| n2 == n }.count > count
        count = scorecard[:four_of_a_kind].select{ |n2| n2 == n }.count
      end
    end
    if count > 3
      score = scorecard[:four_of_a_kind].sum
    else
      score = 0
    end
    puts 'for your 4 of a kind you score: ' + score.to_s
    score
  end
  # Really?!
  def full_house
    return 0 if scorecard[:full_house].uniq.count > 2 || scorecard[:full_house].uniq.count < 2
    scorecard[:full_house].each do |n|
      if scorecard[:full_house].select { |n2| n2 == n }.count == 1
        puts 'for your full house you score: 0'
        return 0
      end
    end
    puts 'for your full house you score: 25'
    25
  end

  # Actually, this looks alright
  def short_straight
    straight_count = 1
    unique_array = scorecard[:short_straight].sort.uniq

    unique_array.each_with_index do |dice, i|
      if i < unique_array.length-1 then
        if (unique_array[i+1] - unique_array[i]) > 1 then
            break if straight_count >= 4
            straight_count = 1
        end
        straight_count += 1
      end
    end
    puts "for your short straight you score: #{straight_count >= 4 ? 30 : 0}"
    return 30 if straight_count >= 4
    0
  end

  def long_straight
    puts "for your long straight you score: #{ scorecard[:long_straight].sort == [1,2,3,4,5] || scorecard[:long_straight].sort == [2,3,4,5,6] ? 40 : 0}"

    return 40 if scorecard[:long_straight].sort == [1,2,3,4,5] || scorecard[:long_straight].sort == [2,3,4,5,6]
    0
  end

  # :-/
  def yahtzee
    score = 0
    score += 50 if scorecard[:yahtzee][0] == scorecard[:yahtzee][1] && scorecard[:yahtzee][0] == scorecard[:yahtzee][2] && scorecard[:yahtzee][0] == scorecard[:yahtzee][3] && scorecard[:yahtzee][0] == scorecard[:yahtzee][4]
    puts "for your yahtzee you score: #{ score == 50 ? 50 : 0}"
    
    score
  end

  # :-(
  def chance
    puts "for your chance you score: " + (scorecard[:chance][0] + scorecard[:chance][1] + scorecard[:chance][2] + scorecard[:chance][3] + scorecard[:chance][4]).to_s
    scorecard[:chance][0] + scorecard[:chance][1] + scorecard[:chance][2] + scorecard[:chance][3] + scorecard[:chance][4]
  end

  # That's it, you're fired!
  def yahtzee_bonus
    yahtzee_count = 0
    yahtzee_count += 1 if scorecard[:set_of_1s].uniq.count == 1
    yahtzee_count += 1 if scorecard[:set_of_2s].uniq.count == 1
    yahtzee_count += 1 if scorecard[:set_of_3s].uniq.count == 1
    yahtzee_count += 1 if scorecard[:set_of_4s].uniq.count == 1
    yahtzee_count += 1 if scorecard[:set_of_5s].uniq.count == 1
    yahtzee_count += 1 if scorecard[:set_of_6s].uniq.count == 1
    yahtzee_count += 1 if scorecard[:three_of_a_kind].uniq.count == 1
    yahtzee_count += 1 if scorecard[:four_of_a_kind].uniq.count == 1
    yahtzee_count += 1 if scorecard[:full_house].uniq.count == 1
    yahtzee_count += 1 if scorecard[:short_straight].uniq.count == 1
    yahtzee_count += 1 if scorecard[:long_straight].uniq.count == 1
    yahtzee_count += 1 if scorecard[:chance].uniq.count == 1 
    puts "for your yahtzee bonus you score: 0" if yahtzee_count < 2
    return 0 if yahtzee_count < 2
    puts "for your yahtzee bonus you score: #{100 * (yahtzee_count - 1)}" if yahtzee_count >= 2
    100 * (yahtzee_count - 1)
  end
end

sc = {
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

x = YahtSco.new(sc)
x.do_a_thing