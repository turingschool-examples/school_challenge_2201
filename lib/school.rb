# ./lib/school.rb
class School
attr_reader :start_time,
            :hours_in_school_day,
            :student_names,
            :end_time

  def initialize (start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = end_time.to_s
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def calculate_end_time(end_time)
     start_time.to_i + hours_in_school_day << end_time
  end

end

school = School.new('9:00', 7)

school.add_student_name('Aurora')
school.add_student_name('tim')
school.add_student_name('megan')

school_1 = School.new('9:00', 7)
school_2 = School.new('9:00', 3)

school_1.end_time
school_2.end_time
