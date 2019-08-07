# code here!
require "pry"
class School
  attr_accessor :roster
  def initialize (name)
        @name = name
        @roster = {}
  end

  def add_student (student_name, grade)
    if @roster.has_key?(grade) == true
       @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
    end
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    
    # @roster.sort 
    @roster.map {|key, names| [key, names.sort] }.to_h
    # @roster.sort.to_h
    #sorted_values = @roster.values.sort.to_h

    
  end

end
