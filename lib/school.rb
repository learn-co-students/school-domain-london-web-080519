require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name, roster= {})
        @name = name
        @roster = roster
    end

    def add_student(student, grade)
        @roster[grade] ||= []  #creates an array (for the key value of the grade) IF it doesn't already exist
        @roster[grade] << student
    end

    def grade(number)
        @roster[number]
    end

    def sort
        sorted_hash = {}
        @roster.each { |grade, names| sorted_hash[grade] = names.sort }
        sorted_hash
    end

end
