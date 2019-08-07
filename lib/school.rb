# code here!
class School

    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grad)
        # add student to roster
        if @roster[grad]
            @roster[grad] << name
        else
            @roster[grad] = []
            @roster[grad] << name
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        hash ={}

        @roster.each do |grad, list|
            hash[grad] = list.sort
            
        end
        hash
    end

# 
    
end

{
    9 => ['Jack', 'Billy'],
    10 => []
}