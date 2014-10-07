def hello(name)
  "Hello, " + name
end

#puts hello('ale')

def starts_with_consonant?(s)
   !!(s =~  /^[bcdfghjklmnpqrstvwxyz]/i)
end

#puts starts_with_consonant?('a')

def binary_multiple_of_4?(str)
  str =~ /^[01]*1[01]*00$/
end