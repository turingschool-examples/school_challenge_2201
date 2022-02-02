# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    (@start_time[0].to_i + @hours_in_school_day).to_s + ':00'
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map {|name| name.capitalize}
  end

  def convert_end_time_to_clock_time
    ((@start_time[0].to_i + @hours_in_school_day)-12).to_s + ':00'
  end
end
