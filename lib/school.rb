# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :end_time
  def initialize (start_time, hours_in_school_day, student_names = [])
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = student_names
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    time = (@start_time.to_i + @hours_in_school_day)
    end_time = "#{time}:00"
    return end_time
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    capital_names = []
    student_names.each do |name|
      capital_names << name.capitalize
    end
    return capital_names
  end

  def convert_end_time_to_clock_time
    if @start_time.to_i + @hours_in_school_day > 12
      time = (end_time.to_i - 12)
    else
      time = @start_time.to_i + @hours_in_school_day
    end
    end_clock_time = "#{time}:00"
  end

end
