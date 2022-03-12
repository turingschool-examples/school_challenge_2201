require 'rspec'
require 'pry'
require './lib/school'

RSpec.describe School do
  
  let!(:school) {School.new('9:00', 7)}
  
  context 'Iteration 1' do
    it 'exists and provides back start time, hours and zero students' do
      expect(school).to be_a(School)
      expect(school.start_time).to eq('9:00')
      expect(school.hours_in_school_day).to eq(7)
      expect(school.student_names).to eq([])
    end
  end

  context 'Iteration 2' do
    it 'can add student names' do
      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')
      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end
    it 'can calculate end time' do
      expect(school.end_time).to eq('16:00')
    end
  end

  context 'Iteration 3' do
    it 'can check self to see whether full time' do
      expect(school.is_full_time?).to eq true
    end

    it 'can standardize student names' do
      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')
      expect(school.standard_student_names). to eq(['Aurora', 'Tim', 'Megan'])
    end
  end

  context 'Iteration 4' do
    it 'can convert end of day time to 12 hour format' do
      expect(school.convert_end_time_to_clock_time).to eq "4:00"
    end
  end

end
