class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(s,h)
    @start_time = s
    @hours_in_school_day = h 
    @student_names = []
  end
end
