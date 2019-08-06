# code here!

class School
    def initialize(roster)
        @roster = Hash.new {|grade,student| grade[student]=[]}
    end

    attr_reader :roster

    def add_student(student, grade)
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student|
            student.sort!
        end
    end
end
