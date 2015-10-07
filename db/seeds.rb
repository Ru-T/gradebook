# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1 = Teacher.create!(name: "Mrs. Rollins", email: "rollins@mail.com", password: "rollinsisateacher")
t2 = Teacher.create!(name: "Mr. Fidel", email: "fidel@mail.com", password: "fidelisateacher")

s1 = Student.create!(name: "Ruti", email: "ruti@mail.com", password: "rutiisastudent")
s2 = Student.create!(name: "Ilan", email: "ilan@mail.com", password: "ilanisastudent")

t1.students << s1
t1.save

t1.students << s2
t1.save

p1 = Parent.create!(name: "Ewa", email: "ewa@mail.com", password: "ewaisaparent")
p2 = Parent.create!(name: "Leon", email: "leon@mail.com", password: "leonisaparent")

s1.parents << p1
s1.save

s2.parents << p2
s2.save

g1 = Grade.create!(date: "10-05-2015", assignment_name: "homework", grade: 95)
g2 = Grade.create!(date: "10-04-2015", assignment_name: "midterm", grade: 85)
g3 = Grade.create!(date: "10-03-2015", assignment_name: "homework", grade: 90)
g4 = Grade.create!(date: "10-05-2015", assignment_name: "midterm", grade: 80)

s1.grades << g1
s1.save

s1.grades << g2
s1.save

s2.grades << g3
s2.save

s2.grades << g4
s2.save
