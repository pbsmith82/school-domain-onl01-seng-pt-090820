require"pry"
# code here!
class School
    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    
    end

    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade] << name 
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        rostersort = {}
        @roster.each do |grades, student_array|
            rostersort[grades] = student_array.sort
        end
        rostersort
    end

end
