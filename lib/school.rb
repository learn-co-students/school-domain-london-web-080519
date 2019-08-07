class School

attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
    roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    #takes the roster hash
    @roster.each do |grade, student_names|
    #sorts the student_name values alphabetically
    @roster[grade] = student_names.sort 
    end
  end

end
