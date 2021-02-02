require "pry"


class School 

    attr_accessor :name, :roster


    def initialize name
        @name = name
        @roster = {}
    end

    def add_student name, grade 
        binding.pry
        self.roster[grade] ? self.roster[grade] << name : self.roster[grade] = [name]
    end 

    def grade num
        self.roster[num]
    end 

    def sort
        roster = {}
        sorted_names = self.roster.each do |k,v|
            roster[k] = v.sort
        end
        roster.sort_by do |k,v|
            k
        end.to_h
    end 
end 