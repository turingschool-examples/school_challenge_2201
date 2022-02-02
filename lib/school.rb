# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :end_time
  def initialize (time_start, duration)
    @start_time = time_start
    @hours_in_school_day = duration
    @student_names = []
    #Okay, the math for this requires string manipulation. GoGoGadget Google!
    #Assuming everything's formatted ##:##, we search for the position of the : and take the first or first two characters, translate to float with the .to_i method, do the math, interpolate into new string, assign to @end_time
    if(time_start[1] == ':')
      start_time_converter = time_start[0]
    else
      start_time_converter = time_start[0,1]
    end
    start_time_converter = start_time_converter.to_i
    start_time_converter += duration
    @end_time = "#{start_time_converter}:00"
  end
  #adds one student name to the @student_names instance variable.
  def add_student_name (single_name_to_add)
    @student_names << single_name_to_add
  end
end
