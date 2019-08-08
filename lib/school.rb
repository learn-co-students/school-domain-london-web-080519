# code here!

class School

    attr_writer :roster, :add_student


    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster   
        @roster
    end

    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student_name
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new_hash = {}
        @roster.each do |grade_key, name_array|
          new_hash[grade_key] = name_array.sort()
        end
        new_hash
    end

end