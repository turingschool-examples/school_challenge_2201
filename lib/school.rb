# ./lib/school.rb
class School
  attr_reader :start_time, :student_names
  #initialize method, each new school starts with start_time, hours and an empty array of student_names
  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours
    @student_names = []
  end

  #edited out when attr_reader was added
  # def start_time
  #   @start_time
  # end

  #method for how many hours in the school day
  def hours_in_school_day
    @hours
  end

  # def student_names
  #   @student_names
  # end

  #method to add students to student_names array
  def add_student_name(name)
    @student_names.push(name)
  end

  #method to figure out the end_time of the school day
  def end_time
    #new variable time set to equal the start time converted to integer to add to hours
    time = @start_time.to_i + @hours
    #revert end time back to being a string
    "#{time}:00"
  end

  #method to see if the school is considered full time
  def is_full_time?
    # if @hours > 4
    #   return true
    # else
    #   return false
    # end
    #a different way I found to make this work
    @hours > 4 ?  true : false
  end

  #method to return the student_names array but with capitalized names
  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  #method to convert military time to clock time"
  def convert_end_time_to_clock_time
    #new variable set to equal the result of the end_time method converted to an integer
    e_time = end_time.to_i
    #check to see if the e_time is greater than 12 and needs to be converted
    if e_time > 12
      #make sure it doesn't go over 23:00
      if e_time > 23
        "School goes past midnight 😬"
      else
      #if yes turn it back into a string while subtracting 12
      "#{e_time - 12}:00"
      end
    else
      #if no just return it to string form
      "#{e_time}:00"
    end
  end

  def alphabetize_students
    @student_names.sort
  end

end
