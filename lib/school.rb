# ./lib/school.rb
class School

  def initialize(start_time,hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def start_time
    @start_time
  end

  def hours_in_school_day
    @hours_in_school_day
  end

  def student_names
    @student_names
  end

  def add_student_name(student_name)
      @student_names << student_name
  end

  def end_time
    end_time = @start_time.to_i + @hours_in_school_day
    end_time.to_s + ":00"
  end

  def full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names(student_name)
    @student_names << student_name.capitalize
  end

  def convert_end_time_to_clock_time
    end_time = @start_time.to_i + @hours_in_school_day

    end_time = end_time - 12

    end_time.to_s + ":00"
  end

end
