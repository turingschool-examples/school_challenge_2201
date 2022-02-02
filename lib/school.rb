# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
def initialize (time_start, duration)
  @start_time = time_start
  @hours_in_school_day = duration
  @student_names = []
end
end
