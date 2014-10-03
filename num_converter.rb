# PROGRAMMING LANGUAGE: RUBY
# SPOKEN LANGUAGE: ENGLISH
# should take a non-negative number and return its spoken-language form

def spoken_word(num)
  case num
  when 0..19
    ones_hash[num]
  when 20..99
    calc_tens(num)
  when 100..999
    calc_hundreds(num)
  end
end

def ones_hash
  {
    0=> "zero",
    1=> "one",
    2=> "two",
    3=> "three",
    4=> "four",
    5=> "five",
    6=> "six",
    7=> "seven",
    8=> "eight",
    9=> "nine",
    10=> "ten",
    11=> "eleven",
    12=> "twelve",
    13=> "thirteen",
    14=> "fourteen",
    15=> "fifteen",
    16=> "sixteen",
    17=> "seventeen",
    18=> "eighteen",
    19=> "nineteen",
  }
end

def tens_hash
  {
    2=> "twenty",
    3=> "thirty",
    4=> "fourty",
    5=> "fifty",
    6=> "sixty",
    7=> "seventy",
    8=> "eighty",
    9=> "ninety"
  }
end

# ex calc_tens(20)
# -> first_num = (20).to_s[0].to_i -> 2
# -> second_num = (20).to_s[1].to_i -> 0
# -> tens_hash[2] -> twenty
def calc_tens(num)
  first_num = num.to_s[0].to_i
  second_num = num.to_s[1].to_i
  res = tens_hash[first_num]
  unless second_num == 0
    res += " " + ones_hash[num-(first_num*10)]
  end
  return res
end

# ex calc_hundreds(780)
# -> first_num = (780).to_s[0].to_i -> 7
# -> last_two_nums = (780).to_s[1,2].to_i -> 80
# -> res = "seven hundred"
# -> calc_tens(80) -> eighty
# -> res = "seven hundred eighty"
def calc_hundreds(num)
  first_num = num.to_s[0].to_i
  last_two_nums = num.to_s[1,2].to_i
  res = "#{ones_hash[first_num]} hundred"
  case last_two_nums
  when 0
    return res
  when 1..19
    res += " " + ones_hash[last_two_nums]
  when 20..99
    res += " " +  calc_tens(last_two_nums)
  end
end

# TESTS
puts 0, spoken_word(0)
puts 4, spoken_word(4)
puts 14, spoken_word(14)
puts 38, spoken_word(38)
puts 45, spoken_word(45)
puts 60, spoken_word(60)
puts 72, spoken_word(72)
puts 99, spoken_word(99)
puts 121, spoken_word(121)
puts 158, spoken_word(158)
puts 200, spoken_word(200)
puts 305, spoken_word(305)
puts 473, spoken_word(473)
puts 517, spoken_word(517)
puts 618, spoken_word(618)
puts 711, spoken_word(711)
puts 899, spoken_word(899)
puts 942, spoken_word(942)
