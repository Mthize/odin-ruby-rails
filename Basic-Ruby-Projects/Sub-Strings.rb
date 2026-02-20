def substrings(text, dictionary)
  text = text.downcase.gsub(/[^a-z\s]/i, '')

  result = Hash.new(0)

  dictionary.each do |word|
    count = text.scan(word).length
    result[word] = count if count > 0
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
