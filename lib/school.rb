class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(s,h)
    @start_time = s
    @hours_in_school_day = h 
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    hours = start_time.to_i + hours_in_school_day
    "#{hours}:00"
  end

  def is_full_time?
    if hours_in_school_day > 4
      true
    end
  end

  def standard_student_names
    s_names = []
    student_names.each do |n|
      s_names << n.capitalize
    end
    s_names
  end

  def convert_end_time_to_clock_time
    if end_time.to_i > 12
      "#{end_time.to_i - 12}:00" 
    end
  end
      
end
