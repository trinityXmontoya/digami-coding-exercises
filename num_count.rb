# Write a function that takes in a number N and counts how many numbers between 1 and N (inclusive) do not contain any digits which are ‘7’.

def num_count(num)
  total = 0
  num.downto(1).each do |num|
    if !num.to_s.include?("7")
      total +=1
    end
    num +=1
  end
  return "There is/are #{total} number(s) between 1 and #{num} that do not contain the number 7"
end

# none
puts num_count(1)
# one (7)
puts num_count(8)
# three (7,17,27)
puts num_count(27)
