class Students

def initialize(input_student_name, input_student_cohort, input_student_prog_language)
  @student_name = input_student_name
  @student_cohort = input_student_cohort
  @student_prog_language = input_student_prog_language
end

def get_student_name()
  return @student_name
end

def get_student_cohort()
  return @student_cohort
end

def set_student_name(student_name)
  return @student_name
end

def set_student_cohort(student_cohort)
  return @student_cohort
end

def student_talk()
  return "progamming can suck my nipples"
end

def student_prog_language()
  return "#{@student_name}'s favourite programming language is #{@student_prog_language}!"
end

end # END of CLASS