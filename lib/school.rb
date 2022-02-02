# ./lib/school.rb
class School
  attr_reader :start_time, :student_names
  def initialize(start_time, hours)
    @start_time = start_time
    @hours = hours
    @student_names = []
  end

  # def start_time
  #   @start_time
  # end

  def hours_in_school_day
    @hours
  end

  # def student_names
  #   @student_names
  # end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time
    time = @start_time.to_i + @hours
    return "#{time}:00"
  end

  def is_full_time?
    if @hours > 4
      return true
    else
      return false
    end
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def convert_end_time_to_clock_time
    e_time = end_time.to_i
    if e_time > 12
      "#{e_time - 12}:00"
    else
      "#{e_time}:00"
    end
  end





end
