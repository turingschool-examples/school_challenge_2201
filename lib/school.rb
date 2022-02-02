# ./lib/school.rb
class School
  attr_reader :hours_in_school_day, :start_time, :student_names, :end_time

  def initialize(start_time, hours_in_school_day)
    @hours_in_school_day = hours_in_school_day
    @start_time          = start_time
    @student_names       = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
   puts "@start_time.to_i + @hours_in_school_day) << ':00'"

  end
end
