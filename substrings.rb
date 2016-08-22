
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
  x = Hash.new(0)
  input.downcase!

  dictionary.each do |y|
    iterate = input.scan(y).length
    x[y] = iterate unless iterate.zero?
  end
  x
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)






