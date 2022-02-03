# ./lib/school.rb

class School
  def initialize(sch_starts, sch_hrs)
    @sch_start = sch_starts
    @sch_hr    = sch_hrs
  end
end

school = School.new('9:00', 7)
