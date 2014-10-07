if __FILE__ == $0
  # TODO Generated stub
  class Employee
    def initialize(name, salary, hire_year)
      @name = name
      @salary = salary
      @hire_year = hire_year
    end
    
    attr_reader :name, :salary, :hire_year 
  
    def raise_salary_by(perc)
      @salary += (@salary * (perc * 0.01))
    end
    
    def to_s
      "Name is #{@name}, salary is #{@salary}, " + 
      "hire year is #{@hire_year}"
    end
  
  end
  
end