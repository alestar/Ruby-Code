# TODO Generated stub                
require 'test/unit/testcase'
require 'test/unit/autorunner'
require 'hr'
require 'EmployedExp.rb'

class TestEmployee < Test::Unit::TestCase
  @@Test_Salary = 2500

  def setup
    @emp = Employee.new("Homer", @@Test_Salary, 2003)
  end

  def test_raise_salary
    @emp.raise_salary_by(10)
    expected = (@@Test_Salary * 0.10) + @@Test_Salary
    assert( expected == @emp.salary)
  end

end
  
