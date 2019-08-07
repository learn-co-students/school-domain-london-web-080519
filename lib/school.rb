# code here!

require "pry"

class School
attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        #update an empty hash     
      
       if roster[grade]
        ## push student onto the values array
        roster[grade] << name
       else 
        ## create and add
        roster[grade] = []
        roster[grade] << name
       end
       #Thank you for the pen and paper demo, Oli
    end
    
    def grade(num)
        roster[num]
    end

    def sort
     #   roster.sort.to_h #just calling .sort flattens to an array, use .to_h to maintain hash format
       roster.sort_by {|k,v| k }.to_h
        
        #loop through and sort each grade, and then loop through and sort each student
        sorted = {}
        roster.each do |key, value|
            sorted[key] = value.sort
        end
        sorted
    end
    
end