# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.destroy_all
Student.destroy_all
Section.destroy_all 
Grade.destroy_all 
Assignment.destroy_all 


t1 = Teacher.create(name: 'Tom', subject: 'Math', username: 'tom', password: 'tmath')
t2 = Teacher.create(name: 'Rob', subject: 'Science', username: 'Rob', password: 'tscience')

s1 = Section.create(name: '6AMath', teacher_id: t1.id)
s2 = Section.create(name: '6BMath', teacher_id: t1.id)
s3 = Section.create(name: '7AMath', teacher_id: t1.id)
s4 = Section.create(name: '7BMath', teacher_id: t1.id)
s5 = Section.create(name: '6AScience', teacher_id: t2.id)
s6 = Section.create(name: '6BScience', teacher_id: t2.id)


st1 = Student.create(firstname: 'Ken' , lastname: 'Black', section_id: s1.id)
st2 = Student.create(firstname: 'Ray' , lastname: 'Axe', section_id: s1.id)
st3 = Student.create(firstname: 'Tim' , lastname: 'Smith', section_id: s1.id)
st4 = Student.create(firstname: 'John' , lastname: 'Flick', section_id: s1.id)
st5 = Student.create(firstname: 'Aren' , lastname: 'Hughes', section_id: s2.id)
st6 = Student.create(firstname: 'Aaron' , lastname: 'Arends', section_id: s2.id)
st7 = Student.create(firstname: 'Robert' , lastname: 'Yildiz', section_id: s2.id)
st8 = Student.create(firstname: 'Alex' , lastname: 'Blue', section_id: s3.id)
st9 = Student.create(firstname: 'Tom' , lastname: 'Edge', section_id: s3.id)
st10 = Student.create(firstname: 'Alex' , lastname: 'King', section_id: s1.id)
st11 = Student.create(firstname: 'Kira' , lastname: 'Allen', section_id: s1.id)
st12 = Student.create(firstname: 'Byron' , lastname: 'Young', section_id: s1.id)
st13 = Student.create(firstname: 'Aoron' , lastname: 'Robinson', section_id: s1.id)
st14 = Student.create(firstname: 'Tim' , lastname: 'Lewis', section_id: s1.id)
st15 = Student.create(firstname: 'Kite' , lastname: 'Ramirez', section_id: s1.id)
st16 = Student.create(firstname: 'Robin' , lastname: 'Clark', section_id: s1.id)
st17 = Student.create(firstname: 'Liam' , lastname: 'Sanchez', section_id: s1.id)
st18 = Student.create(firstname: 'Noah' , lastname: 'Harris', section_id: s1.id)
st19 = Student.create(firstname: 'Oliver' , lastname: 'White', section_id: s1.id)
st20 = Student.create(firstname: 'William' , lastname: 'Thompson', section_id: s1.id)
st21 = Student.create(firstname: 'Elijah' , lastname: 'Perez', section_id: s1.id)
st22 = Student.create(firstname: 'James' , lastname: 'Lee', section_id: s1.id)
st23 = Student.create(firstname: 'Benjamin' , lastname: 'Martin', section_id: s1.id)
st24 = Student.create(firstname: 'Lucas' , lastname: 'Jackson', section_id: s1.id)
st25 = Student.create(firstname: 'Mason' , lastname: 'Moore', section_id: s1.id)
st26 = Student.create(firstname: 'Ethan' , lastname: 'Taylor', section_id: s1.id)
st27 = Student.create(firstname: 'Alexander' , lastname: 'Thomas', section_id: s1.id)
st28 = Student.create(firstname: 'Henry' , lastname: 'Anderson', section_id: s1.id)
st29 = Student.create(firstname: 'Jacob' , lastname: 'Wilson', section_id: s1.id)
st30 = Student.create(firstname: 'Michael' , lastname: 'Brave', section_id: s1.id)
st31 = Student.create(firstname: 'Daniel' , lastname: 'Gonzalez', section_id: s1.id)
st32 = Student.create(firstname: 'Logan' , lastname: 'Lopez', section_id: s1.id)
st33 = Student.create(firstname: 'Jackson' , lastname: 'Hernandez', section_id: s1.id)
st34 = Student.create(firstname: 'Sebastian' , lastname: 'Martinez', section_id: s1.id)
st35 = Student.create(firstname: 'Aiden' , lastname: 'Rodriguez', section_id: s1.id)
st36 = Student.create(firstname: 'Owen' , lastname: 'Davis', section_id: s1.id)
st37 = Student.create(firstname: 'Samuel' , lastname: 'Miller', section_id: s1.id)
st38 = Student.create(firstname: 'Matthew' , lastname: 'Garcia', section_id: s1.id)
st39 = Student.create(firstname: 'Levi' , lastname: 'Jones', section_id: s1.id)
st40 = Student.create(firstname: 'Mateo' , lastname: 'Brown', section_id: s1.id)
st41 = Student.create(firstname: 'David' , lastname: 'Williams', section_id: s1.id)
st42 = Student.create(firstname: 'John' , lastname: 'Johnson', section_id: s1.id)
st43 = Student.create(firstname: 'Wyatt' , lastname: 'Smith', section_id: s1.id)
st44 = Student.create(firstname: 'Carter' , lastname: 'Hall', section_id: s1.id)

a1 = Assignment.create(name: 'Division', section_id: s1.id)
a2 = Assignment.create(name: 'Multiplication', section_id: s1.id)
a3 = Assignment.create(name: 'Fractions', section_id: s1.id)
a4 = Assignment.create(name: 'Division', section_id: s2.id)
a5 = Assignment.create(name: 'Multiplication', section_id: s2.id)
a6 = Assignment.create(name: 'Plants', section_id: s3.id)
a7 = Assignment.create(name: 'Animals', section_id: s3.id)
a8 = Assignment.create(name: 'Oceans', section_id: s3.id)
a9 = Assignment.create(name: 'Rain Forests', section_id: s3.id)
a10 = Assignment.create(name: 'Animals', section_id: s4.id)
a11 = Assignment.create(name: 'Oceans', section_id: s4.id)

g1 = Grade.create(score: 60,assignment_id: a1.id, student_id: st1.id )
g2 = Grade.create(score: 70,assignment_id: a1.id, student_id: st2.id )
g3 = Grade.create(score: 80,assignment_id: a1.id, student_id: st3.id )
g4 = Grade.create(score: 65,assignment_id: a1.id, student_id: st4.id )

g5 = Grade.create(score: 63,assignment_id: a2.id, student_id: st1.id )
g6 = Grade.create(score: 73,assignment_id: a2.id, student_id: st2.id )
g7 = Grade.create(score: 83,assignment_id: a2.id, student_id: st3.id )
g8 = Grade.create(score: 63,assignment_id: a2.id, student_id: st4.id )

g9 = Grade.create(score: 64,assignment_id: a3.id, student_id: st1.id )
g10 = Grade.create(score: 74,assignment_id: a3.id, student_id: st2.id )
g11 = Grade.create(score: 84,assignment_id: a3.id, student_id: st3.id )
g12 = Grade.create(score: 64,assignment_id: a3.id, student_id: st4.id )

g13 = Grade.create(score: 64,assignment_id: a4.id, student_id: st5.id )
g14 = Grade.create(score: 84,assignment_id: a4.id, student_id: st6.id )
g15 = Grade.create(score: 74,assignment_id: a4.id, student_id: st7.id )

g16 = Grade.create(score: 64,assignment_id: a5.id, student_id: st5.id )
g17 = Grade.create(score: 84,assignment_id: a5.id, student_id: st6.id )
g18 = Grade.create(score: 74,assignment_id: a5.id, student_id: st7.id )

g19 = Grade.create(score: 79,assignment_id: a6.id, student_id: st8.id )
g20 = Grade.create(score: 75,assignment_id: a6.id, student_id: st9.id )

g21 = Grade.create(score: 89,assignment_id: a7.id, student_id: st8.id )
g22 = Grade.create(score: 65,assignment_id: a7.id, student_id: st9.id )

g23 = Grade.create(score: 59,assignment_id: a8.id, student_id: st8.id )
g24 = Grade.create(score: 95,assignment_id: a8.id, student_id: st9.id )

g25 = Grade.create(score: 59,assignment_id: a9.id, student_id: st8.id )
g26 = Grade.create(score: 65,assignment_id: a9.id, student_id: st9.id )

g27 = Grade.create(score: 55,assignment_id: a10.id, student_id: st10.id )

g28 = Grade.create(score: 68,assignment_id: a11.id, student_id: st10.id )
