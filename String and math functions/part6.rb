#class Numeric
#      @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
#      def method_missing(method, *arg)
#        singular_currency = method.to_s.gsub(/s$/,'')
#        if @@currencies.has_key?(singular_currency)
#          self * @@currencies[singular_currency]
#        else
#          super
#        end
#      end
#      def in(arg)
#        singular_currency = arg.to_s.gsub(/s$/,'')
#        if @@currencies.has_key?(singular_currency)
#          self * @@currencies[singular_currency]
#        end
#      end
#    end

class Numeric
  @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  
  def method_missing(method_id)
    singular_currency = to_singular(method_id)
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  
  def in(currency)
    singular_currency = to_singular(currency)
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end
  end
 
  def to_singular(word)
    word.to_s.gsub( /s$/, '')
  end
end

#puts "5.euro = "+5.euro.to_s
#puts "5.euros = "+5.euros.to_s
#puts "5.dollars.in(:euros) = "+5.dollars.in(:euros).to_s
#puts "10.euros.in(:rupees) = "+10.euros.in(:rupees).to_s


class String
  def palindrome?
    self.gsub!(/\s|\W/,"")
    return self.downcase.reverse == self.downcase
  end
end

module Enumerable
  def palindrome?
    return (self.is_a? Array) ? self.reverse == self : self.to_a.palindrome?
  end
end
