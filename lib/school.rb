# ./lib/school.rb
class School
  attr_reader :start_time, :hours_in_school_day, :student_names
  def initialize(first, second)
    @start_time = first
    @hours_in_school_day = second
    @student_names = []
  end

  def add_student_name(name)
    @student_names.push(name)
  end

  def end_time
    st= (first).to_i
    et= st + seconde
    end_time = Time.at(et)
  end

  def is_full_time?
    if second >4
     true
    elsif
     false
   end
 end
 

end
