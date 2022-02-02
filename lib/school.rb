# ./lib/school.rb
class School
attr_reader :start_time,
            :hours_in_school_day,
            :student_names,
            :end_time,
            :standard_student_names



  def initialize (start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time = end_time
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def calculate_end_time
     @start_time.to_i + @hours_in_school_day
  end

  def end_time
    calculate_end_time.to_s + ":00"
  end

  def is_full_time?
    @hours_in_school_day > 4
  end

  def standard_student_names
    names = []
    @student_names.each do |name|
    names << name.capitalize
    end
   names
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
