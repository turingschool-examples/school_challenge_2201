# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(first, second)
    @start_time = first
    @hours_in_school_day = second
    @student_names = []
  end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time 
    t = first.to_datetime
    end_time = t + second
  end

  def is_full_time?(hour, time)
    if time > 4
      true
    elsif
      false
    end
  end
end
