require ('minitest/autorun')
require ('minitest/rg')
require_relative ('codeclan_students')

class TestStudents < MiniTest::Test

def setup()
  @student_one = Students.new("David", 2, "CSS")
  @student_two = Students.new("Bob", 1, "Ruby")
  @student_three = Students.new("Alice", 1, "Python")
end

def test_student_name()
  assert_equal("David", @student_one.get_student_name())
  assert_equal("Bob", @student_two.get_student_name())
  assert_equal("Alice", @student_three.get_student_name())
end

def test_student_cohort()
  assert_equal(2, @student_one.get_student_cohort())
  assert_equal(1, @student_two.get_student_cohort())
  assert_equal(1, @student_three.get_student_cohort())
end

def test_update_student_name()
  @students = Students.new("Dale", 2, "C#")
  @students.set_student_name("Dale")
  assert_equal("Dale", @students.get_student_name())
end

def test_update_student_cohort()
  @students = Students.new("Dale", 2, "C#")
  @students.set_student_cohort(2)
  assert_equal(2, @students.get_student_cohort())
end

def test_student_talk()
  assert_equal("progamming can suck my nipples", @student_one.student_talk)
  assert_equal("progamming can suck my nipples", @student_two.student_talk)
  assert_equal("progamming can suck my nipples", @student_three.student_talk)
end

def test_student_prog_language()
  assert_equal("David's favourite programming language is CSS!", @student_one.student_prog_language)
  assert_equal("Bob's favourite programming language is Ruby!", @student_two.student_prog_language)
  assert_equal("Alice's favourite programming language is Python!", @student_three.student_prog_language)
end

end # END of CLASS
