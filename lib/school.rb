require './lib/school.rb'

class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(start_time, hours_in_school_day)
    @hours_in_school_day = hours_in_school_day
    @start_time = start_time
    @student_names = []
  end


end


#  require './lib/school'
#
#  school = School.new('9:00', 7)
#  school.start_time
#  school.hours_in_school_day
#  school.student_names
#
#
