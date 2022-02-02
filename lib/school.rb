# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :standard_student_names
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @standard_student_names = []
  end

  def add_student_name(name)
    @student_names << name

    @standard_student_names << name.capitalize


  end

  def end_time
    number = @start_time.split(':')[0].to_i + @hours_in_school_day
    number.to_s + ":00"
  end

  def is_full_time?
    true if @hours_in_school_day == 7
  end

  def convert_end_time_to_clock_time
    clock_time = end_time.split(':')[0].to_i - 12
    clock_time.to_s + ":00"
  end

end
