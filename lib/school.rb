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

  def convert_end_time_to_clock_time
    end_time_int = start_time.to_i + hours_in_school_day
    end_time_str = end_time_int.to_s + ":00"

    if end_time_int > 12
    end_time_str - 12
    else

    end
  end
end
