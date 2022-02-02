# ./lib/school.rb
class School
  attr_reader :start_time, :day, :student_names
  def initialize(first, second)
    @start_time = first
    @day = second
    @student_names = []
  end

end
