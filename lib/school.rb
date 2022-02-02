#./lib/school.rb
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

  def convert_end_time_to_24hour_clock_time
    (start_time).to_i + hours_in_school_day
  end

  def end_time
    (convert_end_time_to_24hour_clock_time).to_s + ":00"
  end

  def is_full_time?
    return true if hours_in_school_day > 4
    false
  end

  student_names.each do |student|
    student_name.capitalize
  end

  standard_student_names = []

  student_names.each do |student|
    standard_student_names << student_name
  end

  def convert_end_time_to_clock_time
    (end_time).to_i - 12
  end






end
