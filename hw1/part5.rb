#class Class
#  def attr_accessor_with_history(attr_name)
#    attr_name = attr_name.to_s   
#    attr_reader attr_name       
#    attr_reader attr_name+"_history" # create bar_history getter
#    class_eval "your code here, use %Q for multiline strings"
#  end
#end
#

class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name  # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    #setter-with-history for the desired attribute attr_name
    class_eval %Q{     
      def #{attr_name}_history
        @#{attr_name}_history || [nil] 
      end

      def #{attr_name}=(new_value)
        @#{attr_name}_history ||= [nil] 
        @#{attr_name}_history << @#{attr_name} = new_value
      end
    }
  end
end

class Example
  attr_accessor_with_history :foo
  attr_accessor_with_history :bar
end

a = Example.new; a.foo = 2; a.foo = "test"; 
p a.foo_history # => [nil, 2, "test"]

a = Example.new
p a.foo_history # => [nil]

a = Example.new; a.bar = 2; a.bar = "test"; 
p a.bar_history # => [nil, 2, "test"]

a = Example.new
p a.bar_history # => [nil]