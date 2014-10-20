# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


location = Location.create!(name: "9 Back Hill")

classroom1 = Classroom.create!(name: "Classroom 1" maxpeople: 15)
classroom2 = Classroom.create!(name: "Classroom 2" maxpeople: 10)
classroom3 = Classroom.create!(name: "Classroom 3" maxpeople: 20)
classroom4 = Classroom.create!(name: "Classroom 4" maxpeople: 15)
classroom5 = Classroom.create!(name: "Classroom 5" maxpeople: 10)
classroom6 = Classroom.create!(name: "Classroom 6" maxpeople: 20)
classroom7 = Classroom.create!(name: "Classroom 7" maxpeople: 30)
classroom8 = Classroom.create!(name: "Classroom 8" maxpeople: 5)



wdi1 = Course.create!(name: "WDI 1", start_date: 20121117, end_date: 20120215, classroom_id: classroom1.id, maxsize: 20)
wdi2 = Course.create!(name: "WDI 2", start_date: 20120217, end_date: 20120515, classroom_id: classroom1.id, maxsize: 20)
wdi3 = Course.create!(name: "WDI 3", start_date: 20120517, end_date: 20120815, classroom_id: classroom1.id, maxsize: 20)
wdi4 = Course.create!(name: "WDI 4", start_date: 20120817, end_date: 20121215, classroom_id: classroom1.id, maxsize: 20)
wdi5 = Course.create!(name: "WDI 5", start_date: 20130117, end_date: 20130315, classroom_id: classroom1.id, maxsize: 20)
wdi6 = Course.create!(name: "WDI 6", start_date: 20130317, end_date: 20130615, classroom_id: classroom1.id, maxsize: 20)
wdi7 = Course.create!(name: "WDI 7", start_date: 20130617, end_date: 20130915, classroom_id: classroom1.id, maxsize: 20)
wdi8 = Course.create!(name: "WDI 8", start_date: 20130917, end_date: 20140115, classroom_id: classroom1.id, maxsize: 20)
fude1 = Course.create!(name: "Fude 1", start_date: 20120117, end_date: 20120415, classroom_id: classroom1.id, maxsize: 20)
fude2 = Course.create!(name: "Fude 2", start_date: 20120517, end_date: 20120815, classroom_id: classroom1.id, maxsize: 20)
fude3 = Course.create!(name: "Fude 3", start_date: 20120817, end_date: 20121215, classroom_id: classroom1.id, maxsize: 20)
fude4 = Course.create!(name: "Fude 4", start_date: 20121217, end_date: 20130315, classroom_id: classroom1.id, maxsize: 20)
fude5 = Course.create!(name: "Fude 5", start_date: 20130317, end_date: 20130615, classroom_id: classroom1.id, maxsize: 20)
fude6 = Course.create!(name: "Fude 6", start_date: 20130617, end_date: 20130915, classroom_id: classroom1.id, maxsize: 20)
fude7 = Course.create!(name: "Fude 7", start_date: 20130917, end_date: 20140215, classroom_id: classroom1.id, maxsize: 20)
bude1 = Course.create!(name: "Bude 1", start_date: 20131217, end_date: 20140215, classroom_id: classroom1.id, maxsize: 20)
bude2 = Course.create!(name: "Bude 2", start_date: 20140217, end_date: 20140515, classroom_id: classroom1.id, maxsize: 20)
bude3 = Course.create!(name: "Bude 3", start_date: 20140517, end_date: 20140815, classroom_id: classroom1.id, maxsize: 20)
bude4 = Course.create!(name: "Bude 4", start_date: 20140817, end_date: 20141215, classroom_id: classroom1.id, maxsize: 20)


instructor1 = User.create!(name: "Gerry Mathe", email: "gm@gmail.com", password: "password1", role: "instructor")
instructor2 = User.create!(name: "Michael Pavling", email: "mp@gmail.com", password: "password2", role: "instructor")
instructor3 = User.create!(name: "Mathilda Thompson", email: "mt@gmail.com", password: "password2", role: "instructor")
instructor4 = User.create!(name: "Guy Brown", email: "gb@gmail.com", password: "password6", role: "instructor")
instructor5 = User.create!(name: "Tony Little", email: "tl@gmail.com", password: "password5", role: "instructor")

teachingassistant1 = User.create!(name: "Tobias Hale", email: "th@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant2 = User.create!(name: "Dave Rees", email: "ds@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant3 = User.create!(name: "Frank Johnson", email: "fj@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant4 = User.create!(name: "Ian Simon", email: "is@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant5 = User.create!(name: "John Payne", email: "jp@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant6 = User.create!(name: "Simon Tall", email: "st@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant7 = User.create!(name: "Edward Sharp", email: "es@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant8 = User.create!(name: "Gavin Henderson", email: "gh@gmail.com", password: "password1", role: "Teaching Assistant")
teachingassistant9 = User.create!(name: "Ben Franklin", email: "bf@gmail.com", password: "password1", role: "Teaching Assistant")


students1 = User.create!(name: "Olivia Gibbs", email: "og@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Stephanie Griffiths", email: "sg@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Ella Tons", email: "et@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Cheryl Finger", email: "cf@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "George Biggins", email: "gb@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Zoe Gardner", email: "zg@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Henry Jones", email: "hj@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Claire Legg", email: "cl@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Sam Jam", email: "sj@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Derek Bing", email: "db@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Louis Fish", email: "lf@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Emma Sykes", email: "es@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Gareth Forbes", email: "gf@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Courtney Box", email: "cb@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Ross Edwards", email: "re@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Joey Dike", email: "jd@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Michael Fringe", email: "mf@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Beth Collings", email: "bc@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Nina Strong", email: "ns@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Lulu Jenkins", email: "lj@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Jody Weatherall", email: "jw@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Sean O'Connor", email: "so@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Laura Zing", email: "lz@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Jacob Cummings", email: "jc@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Simon Orange", email: "sor@gmail.com", password: "password1", role: "instructor")
students1 = User.create!(name: "Erik Jan", email: "ej@gmail.com", password: "password1", role: "instructor")

