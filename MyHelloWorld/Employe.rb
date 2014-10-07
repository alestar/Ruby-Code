class Employe
  def initialize(name,salary,hire_year)
    @name = name
    @salary = salary
    @hire_year= hire_year
  end
  
  def to_s
    "Name is #{@name}, salary is #{@salary}, " 
    + "hire year is #{@hire_year}"
  end
  
  def raise_salary_by(perc)
    @salary += (@salary * 0.10)
  end
end

class Mananger < Employe
  def initialize(name, salary, hire_year,asst)
    super(name,salary,hire_year)
    @asst= asst
  end
  
  def to_s
    super + ",\tAssistant info: #{@asst}"
  end
  
  def raise_salary_by(perc)
    perc += 2005 -@hire_year
    super(perc)
  end
end


puts "OK"
e= new Employe(Ann,12,10000)
#e.to_s()