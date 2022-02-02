# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day

  def initialize(start_time, total_hours)
    @start_time = start_time
    @hours_in_school_day = total_hours
    @student_names = []
    @end_time = 0
    @full_time = false
    @standardized_names = []
    @clock_time = 0
  end

  def student_names
    @student_names
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    begin_time = @start_time.delete_suffix(":00").to_i
    @end_time = "#{begin_time + @hours_in_school_day}:00"
  end

  def is_full_time?
    if @hours_in_school_day > 4
      @full_time = true
    end
  end

  def standard_student_names
    @standardized_names = []

    @student_names.each do |index|
      @standardized_names << index.capitalize
    end

    @standardized_names
  end

  def convert_end_time_to_clock_time
    begin_time = @start_time.delete_suffix(":00").to_i
    @clock_time = "#{begin_time + @hours_in_school_day - 12}:00"
  end


end
