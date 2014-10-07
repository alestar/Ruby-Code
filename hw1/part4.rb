class Dessert
  def initialize(name, calories)
    # YOUR CODE HERE
    @name=name
    @calories=calories
  end
  
  attr_accessor :name,:calories
  
  def healthy?
     calories < 200
  end
  
  def delicious?
    return true
  end
  
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name,calories)
    @flavor=flavor
  end
  attr_accessor :flavor
  
  def delicious?
  flavor== "black licorice"? false:true  
  end
end

#d= Dessert.new("pudin",100)
#puts d.healthy?
#puts d.delicious?
#
#j= JellyBean.new("black",100,"spicy")
#puts j.flavor
#puts j.name
#puts j.calories