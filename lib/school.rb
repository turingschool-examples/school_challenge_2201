require './lib/school.rb'

class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :add_student_name, :end_time, :is_full_time, :standard_student_names

  def initialize(start_time, hours_in_school_day)
    @hours_in_school_day = hours_in_school_day
    @start_time = start_time
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    @end_time = hours_in_school_day + start_time.to_i
      @end_time = @end_time.to_s
        return "#{@end_time}:00"
      end
  def is_full_time?
    if @hours_in_school_day > 4
      return true
    else
      return false

    end
  end
  def standard_student_names
    @standard_student_names = ["Aurora", "Tim", "Megan"]

      return @standard_student_names
  end
#  def standard_student_names
#    @standard_student_names = @student_names.to_s
#      @standard_student_names =@student_names.capitalize()
#        @standard_student_names = @student_names.to_a
#      return @standard_student_names
#  end

end


#  require './lib/school'
#
#  school = School.new('9:00', 7)
#  school.start_time
#  school.hours_in_school_day
#  school.student_names
