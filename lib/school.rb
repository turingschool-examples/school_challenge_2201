#./lib/school.rb

class School 
  attr_reader  :hours_in_a_school_day, :start_time, :student_names
  
  def initialize(start, hours)
    @hours_in_a_school_day = hours
    @start_time = start
    @student_names = []
    
    
    def add_student_name(name)
      @student_names << name
    end
    
    def end_time
      start_time + hours_in_a_school_day
    end 
    
    
  end
  
end 
