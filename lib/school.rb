# ./lib/school.rb
require 'rspec'

class School
attr_reader :start_time, :hours_in_school_day, :student_names, :end_time

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = @start_time.to_i + @hours_in_school_day
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    return @end_time.to_s + ":00"
  end

  def is_full_time?
    end_time
      if @end_time > 4
        true
      end
  end

  def standard_student_names
    standard_upper_case = []
    @student_names.each do |student|
      standard_upper_case << student.capitalize
    end
    standard_upper_case
  end

end
