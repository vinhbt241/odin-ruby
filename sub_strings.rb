def substrings(sentence, words_collection)
  words = sentence.split(" ")
  words_collection.reduce(Hash.new(0)) do |result, word_sample|
    words.each do |word| 
      result[word_sample] += 1 if word.downcase.match?(word_sample) 
    end
    result
  end
end

#Example
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
