# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(first, second)
    @start_time = first
    @hours_in_school_day = second
    @student_names = []
  end

  def add_student_name(name)
    students = @student_names.push(name)
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

  def standard_student_names
    capitalized_names = []
    @student_names.each do |student|
      capitalized_names.push(student.capitalize)
    end
    return capitalized_names
  end
end
