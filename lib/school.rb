# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(time, hours)
    @start_time = time
    @hours_in_school_day = hours
    @student_names = []
  end

  def add_student_name(name)
    students = @student_names.push(name)
    #@student_names << name
  end

  def end_time
    st= @start_time[0].to_i #get the first num from array then convert into integer
    et = st + hours_in_school_day
    end_time = et.to_s + ":00" #convert back to string so can add :00

  end

  def is_full_time?
    # if @hours_in_school_day > 4
    #   true
    # else
    #   false
    # end
    @hours_in_school_day >4
  end

  def standard_student_names
    capitalized_names = []
    @student_names.each do |student|
      # capitalized_names.push(student.capitalize)
      capitalized_names << student.capitalize
    end
    return capitalized_names
  end

  def convert_end_time_to_clock_time
    st = @start_time.to_i
    if st > 12
      et = st - 12
    end
  end_time = et.to_s + ":00"
 end

end
