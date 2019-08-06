#Create a class called School 
class School 
    attr_accessor :name, :roster
      #Be able to initialize it with a name 
    def initialize(name)
      @name = name 
            #Create an empty hash which will act as the roster for the School
      @roster = {}
    end

    
    def add_student(name,grade)
         
        roster[grade]||= []
        
        roster[grade] << name
    end
    def grade(level)
        roster.detect do |grade, names| 
          if grade == level
            return names
          end 
        end 
      end 

def sort
    sorted_school = {}
    roster.each do |grade, names|
        sorted_school[grade] = names.sort
    end
    sorted_school
end 
end
  

  

 
  
