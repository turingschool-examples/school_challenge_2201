require './lib/school'

school = School.new('9:00', 7)

p school

print school.start_time

print school.is_full_time?

p school.is_full_time?

school.add_student_name('Aurora')
school.add_student_name('tim')
school.add_student_name('megan')

p school.standard_student_names
