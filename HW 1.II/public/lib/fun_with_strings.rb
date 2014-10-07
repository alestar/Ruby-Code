module FunWithStrings
  
  def palindrome?
    letters = self.downcase.scan(/\w/)
    letters == letters.reverse
  end
  
#  def count_words
#    words = self.downcase.split(/\b\W*/)
#    words.inject(Hash.new(0)) { |res, word| res[word] += 1; res }
#  end
#  
  def count_words
    Hash[self.gsub(/\W/, ' ').downcase.split.group_by{|x| x}.collect{|x| [x[0], x[1].length]}]
  end

  def anagram_groups
    res={}
    hash_str=self.count_words
    hash_str.keys.each do |word|
    key=word.downcase.split('').sort.join
    res[key] ||= []
    res[key] << word
    end
    res.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

#input= "Cars for potatoes rAcs four scar creams scream"
#input.anagram_groups
# output: [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]
