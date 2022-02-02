# ./lib/school.rb
class School

  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(names)
    @student_names << names
  end

  def end_time
    end_of_school = @start_time.to_f + @hours_in_school_day.to_f
      end_of_school.to_s
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    end
  end

  def standard_student_names
    capitalized_names = []
    @student_names.each do |name|
      capitalized_names << name.capitalize
    end
    capitalized_names
  end

end
