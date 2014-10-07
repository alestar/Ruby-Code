def sum(array)
  if array.empty?
    return 0
  else  
   sum = 0
   array.inject{|sum,x| sum + x }
  end 
end

array=[1,2,3]
#puts sum(array)== 6

def max_2_sum(array)
  if array.empty?
    return 0
  elsif array.length==1
    return array[0]
  else
    sorted = array.sort
    sorted[-1] + sorted[-2]
  end
end

puts max_2_sum(array)== 5

def sum_to_n?(array, n)
  (array.empty? && n.zero?) || array.permutation(2).any? { |a, b| a + b == n }
end


#puts sum_to_n?(array,4)