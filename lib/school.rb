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
    time_1 = hours_in_school_day
    time_2 = start_time.byteslice(0)

    sum = time_1 + time_2.to_i

    return sum.to_s + ":00"
  end

  def is_full_time?
    if @hours_in_school_day >= 4
      return true
    else
      return false
    end

  end

  def standard_student_name
    @student_names.each do |name|
      @student_names << name.capitalize
    end
  end


end
