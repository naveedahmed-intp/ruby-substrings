def substrings(string, dictionary)
  hash = Hash.new(0)
  string = string.downcase
  string_array =    string.split(" ")
  string_array.each do |word|
    dictionary.each do |sub_word|
      if word.include?(sub_word)
        hash[sub_word] += 1
      end
    end
  end
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
