# Write a function that takes a string and returns a rot13 version of that string with every other word reversed. If the function is f, f(f(x)) should return x.  Remember to take non-alphanumeric non-alphanumeric characters into account.

# Example Input: “Hello world!”
# Example Output:”byyrU jbeyq!”

# This was one of my first ruby brain teasers! I've repasted the code below.

#one-line ROT-13 solution that works on sentences
def encode(word)
plain = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
cipher =["n","o","p","q","r","s","t","u","v","w","x","y","z","a","b","c","d","e","f","g","h","i","j","k","l","m"]
return word.downcase.tr(plain.to_s,cipher.to_s)
end

puts "should be uryyb jbeyq!"
puts encode("Hello world!")
