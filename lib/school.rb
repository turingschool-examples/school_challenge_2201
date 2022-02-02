class School

  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = @end_time
    @standard_student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    @start_time = @start_time[0]
    @start_time = @start_time.to_i
    @end_time = @start_time + @hours_in_school_day
    @end_time = @end_time.to_s
    @end_time = @end_time + ":00"
    @end_time
  end

  def is_full_time?
    if @hours_in_school_day >= 6
      true
    end
  end

  def standard_student_names
    @student_names.each do |name|
      @standard_student_names << name.capitalize
    end
    @standard_student_names
  end

  def convert_end_time_to_clock_time
    if @end_time[1] == ":"
      @end_time = @end_time[0]
    else
      @end_time = @end_time[0] + @end_time[1]
    end
    @end_time = @end_time.to_i
    if @end_time > 12
      @end_time = @end_time - 12
    else
      @end_time
    end
    @end_time = @end_time.to_s
    @end_time = @end_time + ":00"
    return @end_time

  end

end
