# ./lib/school.rb
require 'time'

class School

  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day, student_names = [])
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = student_names
  end

  def add_student_name(name)
    @student_names.push(name)
    return @student_names
  end

  def end_time
    end_time_as_string = (start_time.to_i + hours_in_school_day).to_s + ":00"
#    p end_time
    return end_time_as_string
  #  hours_as_string = hours_in_school_day.to_s
  #  end_time = (Time.parse(start_time) + Time.parse(hours_as_string))
   # return Time.parse(end_time)
  end

  def is_full_time?
    if hours_in_school_day >= 4
      return true
    else
      return false
    end
  end

#  def standard_student_names
#    @student_names.each do |name|

#  end
end
