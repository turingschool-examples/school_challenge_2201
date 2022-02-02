class School

  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = @end_time
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

end
