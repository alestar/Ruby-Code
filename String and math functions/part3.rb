def combine_anagrams(words)
# YOUR CODE HERE
  res={}
  words.each do |word|
    key=word.downcase.split('').sort.join
    res[key] ||= []
    res[key] << word
  end
p res.values
end


input= ['Cars', 'for', 'potatoes', 'rAcs', 'four', 'scar', 'creams', 'scream'] 
combine_anagrams(input)
# output: [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]