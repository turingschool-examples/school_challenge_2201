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
  #determines full or part time status
  def is_full_time?
    if (@hours_in_school_day < 4)
      return false
    else
      return true
    end
  end
  #reformats student_names to capitalize first and last names
  #assumes based on interaction pattern that all passed names will be first names only, code will not tolerate more than one name at a time!
  def standard_student_names
    downcased_names = []
    standardized_names = []
    @student_names.each do |unformated_name|
      downcased_names << unformated_name.downcase
    end
    downcased_names.each do |name|
      standardized_names << name.capitalize
    end
    return standardized_names
  end
  #convert the end-time from 24h to 12h
  def convert_end_time_to_clock_time
    if(@end_time[1]==":")
      return @end_time
    elsif (@end_time[1] == "0" || @end_time[1] == "1" || @end_time[1] == "2")
      return @end_time
    else
      twelve_hour_converter = @end_time[0,1].to_i
      twelve_hour_converter -= 12
      return "#{twelve_hour_converter}:00"
    end
  end
end
