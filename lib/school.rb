# ./lib/school.rb
class School
    attr_reader :start_time, :hours_in_school_day, :student_names

    def initialize(start_time, hours_in_school_day)
      @start_time = start_time
      @hours_in_school_day = hours_in_school_day
      @student_names = []
    end

    def add_student_name(name)
        student_names.push(name)
    end

    def end_time
        end_time = start_time.to_i + hours_in_school_day
        return "#{end_time}:00"
    end 

    def is_full_time?
        if hours_in_school_day > 4
            return true 
        else
            return false
       end
    end

    def standard_student_names
        standard_names = []
        student_names.each do |name|
            standard_names.push(name.capitalize)
        end
        return standard_names
    end
end
