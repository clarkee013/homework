require ('minitest/autorun')
require ('minitest/rg')
require_relative ('codeclan_students')

class TestStudents < MiniTest::Test

def setup ()
  @student_one = Students.new("David", 2, "Dog")
  @student_two = Students.new("Bob", 1, "Cat")
  @student_three = Students.new("Alice", 1, "Budgie")
end

def test_student_name()
  assert_equal("David", @student_one.get_student_name())
  assert_equal("Bob", @student_two.get_student_name())
  assert_equal("Alice", @student_three.get_student_name())
end



end # END of CLASS
