# ./lib/school.rb
class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    (start_time.to_i + hours_in_school_day).to_s + (":00")
  end

  def is_full_time?
    if hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    ssn = []
    @student_names.each do |student|
      ssn << student.capitalize
    end
    return ssn
  end

  def convert_end_time_to_clock_time
    # binding.pry
    if end_time.to_i > 12
      (end_time.to_i - 12).to_s + (":00")
    end
  end
end
