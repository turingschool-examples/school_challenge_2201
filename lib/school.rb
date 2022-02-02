#./lib/school.rb
#require'pry'
class School
  #attr_reader :start_time, :hours, :studnet_names

  def initialize(time, hours,)
    @start_time = time
    @hours_in_school_day = hours
    @student_names = []

  end

  # def start_time
  #   return @start_time
  #end

  def add_student_name(name)
    @add_student_name << name
end

def end_time
  hour = @start_time.to_i
  hour_end = hour + @hours_in_school_day
  str = hour_end.to_s + ":00"
  # (@start_time.to_i + @hours_in_school_day).to_s + ":00"
  # binding.pry
  end

  def is_full_time?
    # if @hours_in_school_day > 4
    #   return true
    # else
    #   return false
    # end
    @hours_in_school_day > 4

def standard_student_names
  names = []
  @student_names.each do |name|
  names << names.capitalize
  #binding.binding.pry
  end
  names
 end
end
