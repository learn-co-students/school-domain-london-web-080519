# code here!
require "pry"

p "hello"

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster.key?(grade)
            @roster[grade].push(student_name)
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = @roster.reduce({}) do |memo, (grade, students)|
            memo[grade] = students.sort
            memo
        end
    end

end

eg_school = School.new(eg_school)

eg_school.add_student("Bob", 1)
eg_school.add_student("Tim", 2)
eg_school.add_student("Sam", 1)

p eg_school