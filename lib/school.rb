class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
            @roster[grade] ||= []
            @roster[grade] << name
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
       sorted_hash = {}
       @roster.each do |grade, names|
        sorted_hash[grade] = names.sort
       end
       sorted_hash
    end
    
end