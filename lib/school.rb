# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    number = @start_time.split(':')[0].to_i + @hours_in_school_day
    number.to_s + ":00"

  end
end
