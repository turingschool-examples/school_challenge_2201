# ./lib/school.rb
class School
  attr_reader :hours_in_school_day, :start_time, :student_names, :name
  def initialize(start_time, hours_in_school_day)
    @hours_in_school_day = hours_in_school_day
    @start_time          = start_time
  end

  def student_names; []
    @student_names = []
  end

  def add_student_name(name)
    @name = name
  end
end
