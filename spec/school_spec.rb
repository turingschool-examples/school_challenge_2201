require 'rspec'
require 'pry'
require './lib/school'

RSpec.describe School do
  context 'Iteration 1' do
    it 'exists' do
      school = School.new('9:00', 7)

      expect(school).to be_a(School)
    end

    it 'has a start time' do
      school = School.new('9:00', 7)

      expect(school.start_time).to eq('9:00')
    end

    it 'has hours in a school day' do
      school = School.new('9:00', 7)

      expect(school.hours_in_school_day).to eq(7)
    end

    it 'starts with no student names' do
      school = School.new('9:00', 7)

      expect(school.student_names).to eq([])
    end
  end

  context 'Iteration 2' do
    it 'can add student names' do
      school = School.new('9:00', 7)

      school.add_student_name('Aurora')
      school.add_student_name('tim')
      school.add_student_name('megan')

      expect(school.student_names).to eq(['Aurora', 'tim', 'megan'])
    end

    it 'can calculate end time' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.end_time).to eq('16:00')
      expect(school_2.end_time).to eq('12:00')
    end
  end

  context 'Iteration 3' do
    #ASSUMING full-time school is at least 4 hours a day...
    it 'is or is not a full-time school?' do
      school_1 = School.new('9:00', 7)
      school_2 = School.new('9:00', 3)

      expect(school_1.is_full_time?).to eq(true)
      expect(school_2.is_full_time?).to eq(false)
    end

    it 'can capitalize student names if need be' do
      school_1 = School.new('11:00', 4)
      school_1.add_student_name('Aurora')
      school_1.add_student_name('timmothy')
      school_1.add_student_name('bILlY')

      expect(school_1.standard_student_names).to eq(['Aurora', 'Timmothy', 'Billy'])
    end
  end

  context 'Iteration 4' do
    it 'can return a 12 hour end time' do
      school_1 = School.new('8:00', 4)
      school_2 = School.new('6:00', 3)
      school_3 = School.new('8:00', 9)

      expect(school_1.convert_end_time_to_clock_time).to eq('12:00')
      expect(school_2.convert_end_time_to_clock_time).to eq('9:00')
      expect(school_3.convert_end_time_to_clock_time).to eq('5:00')
    end

  end
end
