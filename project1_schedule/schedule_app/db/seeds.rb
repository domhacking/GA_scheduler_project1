# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.delete_all
Course.delete_all
User.delete_all
Classroom.delete_all


location = Location.create!(name: "GA London 9 Back Hill, London EC1R 5EN")


classroom1 = Classroom.create!(name: "Classroom 1", maxpeople: 15, location_id: location.id)
classroom2 = Classroom.create!(name: "Classroom 2", maxpeople: 10, location_id: location.id)
classroom3 = Classroom.create!(name: "Classroom 3", maxpeople: 20, location_id: location.id)
classroom4 = Classroom.create!(name: "Classroom 4", maxpeople: 15, location_id: location.id)
classroom5 = Classroom.create!(name: "Classroom 5", maxpeople: 10, location_id: location.id)
classroom6 = Classroom.create!(name: "Classroom 6", maxpeople: 20, location_id: location.id)
classroom7 = Classroom.create!(name: "Classroom 7", maxpeople: 30, location_id: location.id)
classroom8 = Classroom.create!(name: "Classroom 8", maxpeople: 5, location_id: location.id)


wdi5 = Course.create!(name: "WDI 5", start_date: 20130922, end_date: 20131220, classroom_id: classroom2.id, maxsize: 15)
wdi6 = Course.create!(name: "WDI 6", start_date: 20131222, end_date: 20140320, classroom_id: classroom3.id, maxsize: 10)
wdi7 = Course.create!(name: "WDI 7", start_date: 20140322, end_date: 20140620, classroom_id: classroom5.id, maxsize: 10)
wdi8 = Course.create!(name: "WDI 8", start_date: 20140622, end_date: 20140920, classroom_id: classroom2.id, maxsize: 15)
wdi9 = Course.create!(name: "WDI 9", start_date: 20140922, end_date: 20141220, classroom_id: classroom6.id, maxsize: 20)
wdi10 = Course.create!(name: "WDI 10", start_date: 20141222, end_date: 20150320, classroom_id: classroom7.id, maxsize: 20)
wdi11 = Course.create!(name: "WDI 11", start_date: 20150322, end_date: 20150620, classroom_id: classroom8.id, maxsize: 20)
wdi12 = Course.create!(name: "WDI 12", start_date: 20150622, end_date: 20150920, classroom_id: classroom1.id, maxsize: 20)


fewd1 = Course.create!(name: "FEWD 1", start_date: 20130922, end_date: 20131220, classroom_id: classroom3.id, maxsize: 10)
fewd2 = Course.create!(name: "FEWD 2", start_date: 20131222, end_date: 20140320, classroom_id: classroom3.id, maxsize: 7)
fewd3 = Course.create!(name: "FEWD 3", start_date: 20140322, end_date: 20140620, classroom_id: classroom1.id, maxsize: 10)
fewd4 = Course.create!(name: "FEWD 4", start_date: 20140622, end_date: 20140920, classroom_id: classroom8.id, maxsize: 5)
fewd5 = Course.create!(name: "FEWD 5", start_date: 20140922, end_date: 20141220, classroom_id: classroom2.id, maxsize: 8)
fewd6 = Course.create!(name: "FEWD 6", start_date: 20150322, end_date: 20150620, classroom_id: classroom4.id, maxsize: 10)
fewd7 = Course.create!(name: "FEWD 7", start_date: 20150622, end_date: 20150920, classroom_id: classroom4.id, maxsize: 20)

bewd1 = Course.create!(name: "BEWD 1", start_date: 20130922, end_date: 20131220, classroom_id: classroom6.id, maxsize: 14)
bewd2 = Course.create!(name: "BEWD 2", start_date: 20131222, end_date: 20140320, classroom_id: classroom2.id, maxsize: 4)
bewd3 = Course.create!(name: "BEWD 3", start_date: 20140322, end_date: 20140620, classroom_id: classroom1.id, maxsize: 8)
bewd4 = Course.create!(name: "BEWD 4", start_date: 20140817, end_date: 20141215, classroom_id: classroom2.id, maxsize: 8)

admin = User.create!(name: "Lexie Papodopolus", email: "lp@gmail.com", password: "password1", role: "Admin")



instructor1 = User.create!(name: "Gerry Mathe", email: "gm@gmail.com", password: "password1", role: "Instructor")
instructor2 = User.create!(name: "Michael Pavling", email: "mp@gmail.com", password: "password2", role: "Instructor")
instructor3 = User.create!(name: "Mathilda Thompson", email: "mt@gmail.com", password: "password2", role: "Instructor")
instructor4 = User.create!(name: "Guy Brown", email: "gb@gmail.com", password: "password6", role: "Instructor")
instructor5 = User.create!(name: "Tony Little", email: "tl@gmail.com", password: "password5", role: "Instructor")


wdi5.instructors << instructor2
wdi7.instructors << instructor2
wdi9.instructors << instructor2
wdi11.instructors << instructor2
wdi6.instructors << instructor1
wdi8.instructors << instructor1
wdi10.instructors << instructor1
wdi12.instructors << instructor1
fewd1.instructors << instructor3
fewd3.instructors << instructor3
fewd5.instructors << instructor3
fewd7.instructors << instructor3
fewd2.instructors << instructor4
fewd4.instructors << instructor4
fewd6.instructors << instructor4
bewd1.instructors << instructor5
bewd2.instructors << instructor5
bewd3.instructors << instructor5
bewd4.instructors << instructor5



teaching_assistant1 = User.create!(name: "Tobias Hale", email: "th@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant2 = User.create!(name: "Dave Rees", email: "ds@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant3 = User.create!(name: "Frank Johnson", email: "fj@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant4 = User.create!(name: "Ian Simon", email: "is@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant5 = User.create!(name: "John Payne", email: "jp@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant6 = User.create!(name: "Simon Tall", email: "st@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant7 = User.create!(name: "Edward Sharp", email: "es@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant8 = User.create!(name: "Gavin Henderson", email: "gh@gmail.com", password: "password1", role: "Teaching Assistant")
teaching_assistant9 = User.create!(name: "Ben Franklin", email: "bf@gmail.com", password: "password1", role: "Teaching Assistant")

wdi5.teaching_assistants << teaching_assistant1
wdi5.teaching_assistants << teaching_assistant2
wdi6.teaching_assistants << teaching_assistant3
wdi6.teaching_assistants << teaching_assistant4
wdi7.teaching_assistants << teaching_assistant1
wdi7.teaching_assistants << teaching_assistant2
wdi8.teaching_assistants << teaching_assistant1
wdi8.teaching_assistants << teaching_assistant3
wdi9.teaching_assistants << teaching_assistant4
wdi9.teaching_assistants << teaching_assistant1
wdi10.teaching_assistants << teaching_assistant2
wdi10.teaching_assistants << teaching_assistant3
wdi11.teaching_assistants << teaching_assistant4
wdi11.teaching_assistants << teaching_assistant1
wdi12.teaching_assistants << teaching_assistant2
fewd1.teaching_assistants << teaching_assistant5
fewd2.teaching_assistants << teaching_assistant6
fewd3.teaching_assistants << teaching_assistant7
fewd4.teaching_assistants << teaching_assistant5
fewd5.teaching_assistants << teaching_assistant6
fewd6.teaching_assistants << teaching_assistant7
fewd7.teaching_assistants << teaching_assistant5
bewd1.teaching_assistants << teaching_assistant8
bewd2.teaching_assistants << teaching_assistant9
bewd3.teaching_assistants << teaching_assistant8
bewd4.teaching_assistants << teaching_assistant9


student1 = User.create!(name: "Olivia Gibbs", email: "og@gmail.com", password: "password1", role: "Student")
student2 = User.create!(name: "Stephanie Griffiths", email: "sg@gmail.com", password: "password1", role: "Student")
student3 = User.create!(name: "Ella Tons", email: "et@gmail.com", password: "password1", role: "Student")
student4 = User.create!(name: "Cheryl Finger", email: "cf@gmail.com", password: "password1", role: "Student")
student5 = User.create!(name: "George Biggins", email: "gbs@gmail.com", password: "password1", role: "Student")
student6 = User.create!(name: "Zoe Gardner", email: "zg@gmail.com", password: "password1", role: "Student")
student7 = User.create!(name: "Henry Jones", email: "hj@gmail.com", password: "password1", role: "Student")
student8 = User.create!(name: "Claire Legg", email: "cl@gmail.com", password: "password1", role: "Student")
student9 = User.create!(name: "Sam Jam", email: "sj@gmail.com", password: "password1", role: "Student")
student10 = User.create!(name: "Derek Bing", email: "db@gmail.com", password: "password1", role: "Student")
student11 = User.create!(name: "Louis Fish", email: "lf@gmail.com", password: "password1", role: "Student")
student12 = User.create!(name: "Emma Sykes", email: "esy@gmail.com", password: "password1", role: "Student")
student13 = User.create!(name: "Gareth Forbes", email: "gf@gmail.com", password: "password1", role: "Student")
student14 = User.create!(name: "Courtney Box", email: "cb@gmail.com", password: "password1", role: "Student")
student15 = User.create!(name: "Ross Edwards", email: "re@gmail.com", password: "password1", role: "Student")
student16 = User.create!(name: "Joey Dike", email: "jd@gmail.com", password: "password1", role: "Student")
student17 = User.create!(name: "Michael Fringe", email: "mf@gmail.com", password: "password1", role: "Student")
student18 = User.create!(name: "Beth Collings", email: "bc@gmail.com", password: "password1", role: "Student")
student19 = User.create!(name: "Nina Strong", email: "ns@gmail.com", password: "password1", role: "Student")
student20 = User.create!(name: "Lulu Jenkins", email: "lj@gmail.com", password: "password1", role: "Student")
student21 = User.create!(name: "Jody Weatherall", email: "jw@gmail.com", password: "password1", role: "Student")
student22 = User.create!(name: "Sean O'Connor", email: "so@gmail.com", password: "password1", role: "Student")
student23 = User.create!(name: "Laura Zing", email: "lz@gmail.com", password: "password1", role: "Student")
student24 = User.create!(name: "Jacob Cummings", email: "jc@gmail.com", password: "password1", role: "Student")
student25 = User.create!(name: "Simon Orange", email: "sor@gmail.com", password: "password1", role: "Student")
student26 = User.create!(name: "Erik Jan", email: "ej@gmail.com", password: "password1", role: "Student")
student27 = User.create!(name: "Dominc Hacking", email: "dominichacking@gmail.com", password: "password1", role: "Student")

wdi12.students << student1
wdi12.students << student2
wdi12.students << student3
wdi12.students << student4
wdi12.students << student5
wdi12.students << student6
wdi12.students << student7
wdi12.students << student8
wdi12.students << student9
wdi12.students << student10
wdi12.students << student11
wdi12.students << student12

wdi11.students << student13
wdi11.students << student14
wdi11.students << student15
wdi11.students << student16
wdi11.students << student17
wdi11.students << student18
wdi11.students << student19
wdi11.students << student20
wdi11.students << student21
wdi11.students << student22
wdi11.students << student23
wdi11.students << student24
wdi11.students << student25
wdi11.students << student26

wdi10.students << student1
wdi10.students << student2
wdi10.students << student3
wdi10.students << student4
wdi10.students << student5
wdi10.students << student6
wdi10.students << student7
wdi10.students << student8
wdi10.students << student9
wdi10.students << student10
wdi10.students << student11
wdi10.students << student12

wdi9.students << student16
wdi9.students << student17
wdi9.students << student18
wdi9.students << student19
wdi9.students << student20
wdi9.students << student21
wdi9.students << student22
wdi9.students << student23
wdi9.students << student24
wdi9.students << student25
wdi9.students << student26


wdi5.students << student1
wdi5.students << student2
wdi5.students << student3
wdi5.students << student4
wdi5.students << student5
wdi5.students << student6
wdi5.students << student7
wdi5.students << student8
wdi5.students << student9
wdi5.students << student10
wdi5.students << student11
wdi5.students << student12

wdi6.students << student16
wdi6.students << student17
wdi6.students << student18
wdi6.students << student19
wdi6.students << student20
wdi6.students << student21
wdi6.students << student22
wdi6.students << student23
wdi6.students << student24
wdi6.students << student25
wdi6.students << student26

wdi7.students << student1
wdi7.students << student2
wdi7.students << student3
wdi7.students << student4
wdi7.students << student5
wdi7.students << student6
wdi7.students << student7
wdi7.students << student8
wdi7.students << student9
wdi7.students << student10
wdi7.students << student11
wdi7.students << student12


wdi8.students << student16
wdi8.students << student17
wdi8.students << student18
wdi8.students << student19
wdi8.students << student20
wdi8.students << student21
wdi8.students << student22
wdi8.students << student23
wdi8.students << student24
wdi8.students << student25
wdi8.students << student26

fewd1.students << student1
fewd1.students << student2
fewd1.students << student3
fewd1.students << student4
fewd1.students << student5
fewd1.students << student6
fewd1.students << student7
fewd1.students << student8
fewd1.students << student9
fewd1.students << student10
fewd1.students << student11
fewd1.students << student12

fewd2.students << student16
fewd2.students << student17
fewd2.students << student18
fewd2.students << student19
fewd2.students << student20
fewd2.students << student21
fewd2.students << student22
fewd2.students << student23
fewd2.students << student24
fewd2.students << student25
fewd2.students << student26


fewd3.students << student1
fewd3.students << student2
fewd3.students << student3
fewd3.students << student4
fewd3.students << student5
fewd3.students << student6
fewd3.students << student7
fewd3.students << student8
fewd3.students << student9
fewd3.students << student10
fewd3.students << student11
fewd3.students << student12

fewd4.students << student16
fewd4.students << student17
fewd4.students << student18
fewd4.students << student19
fewd4.students << student20
fewd4.students << student21
fewd4.students << student22
fewd4.students << student23
fewd4.students << student24
fewd4.students << student25
fewd4.students << student26

fewd5.students << student1
fewd5.students << student2
fewd5.students << student3
fewd5.students << student4
fewd5.students << student5
fewd5.students << student6
fewd5.students << student7
fewd5.students << student8
fewd5.students << student9
fewd5.students << student10
fewd5.students << student11
fewd5.students << student12

fewd6.students << student16
fewd6.students << student17
fewd6.students << student18
fewd6.students << student19
fewd6.students << student20
fewd6.students << student21
fewd6.students << student22
fewd6.students << student23
fewd6.students << student24
fewd6.students << student25
fewd6.students << student26

fewd7.students << student1
fewd7.students << student2
fewd7.students << student3
fewd7.students << student4
fewd7.students << student5
fewd7.students << student6
fewd1.students << student7
fewd7.students << student8
fewd7.students << student9
fewd7.students << student10
fewd7.students << student11
fewd7.students << student12

bewd1.students << student13
bewd1.students << student14
bewd1.students << student15

bewd2.students << student13
bewd2.students << student14
bewd2.students << student15

bewd3.students << student13
bewd3.students << student14
bewd3.students << student15

bewd4.students << student13
bewd4.students << student14
bewd4.students << student15

