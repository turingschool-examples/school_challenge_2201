# ./lib/school.rb
class School
  attr_accessor :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    end_time_int = start_time.to_i + hours_in_school_day
    p "#{end_time_int}:00"
  end

  def is_full_time?
    hours_in_school_day > 4
  end

  def standard_student_names
    student_names.map(&:capitalize)
  end
end
