require 'test/unit/testsuite'
require 'test/unit/ui/tk/testrunner'
require 'test/unit/ui/console/testrunner'
require 'TestEmployee'
require 'TestManager'


class TestSuite_AllTests
    def self.suite
        suite = Test::Unit::TestSuite.new("HR Tests")
        suite << TestEmployee.suite
        suite << TestManager.suite
        return suite
    end
end

#Test::Unit::UI::Tk::TestRunner.run(TestSuite_AllTests)
Test::Unit::UI::Console::TestRunner.run(TestSuite_AllTests)