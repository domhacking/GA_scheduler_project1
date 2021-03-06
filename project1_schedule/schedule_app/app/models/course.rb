class Course < ActiveRecord::Base
  attr_accessible :end_date, :maxsize, :name, :start_date, :classroom_id, :student_ids, :instructor_ids, :teaching_assistant_ids

  belongs_to :classroom
  has_and_belongs_to_many :students, class_name: "User", conditions: [ "role=?", "Student"]
  has_and_belongs_to_many :instructors, class_name: "User", conditions: [ "role=?", "Instructor"]
  has_and_belongs_to_many :teaching_assistants, class_name: "User", conditions: [ "role=?", "Teaching Assistant"]
  has_and_belongs_to_many :admins, class_name: "User", conditions: [ "role=?", "Admin"]

  scope :started_courses, lambda { where('start_date <= ?', Time.zone.now)}
  scope :unended_courses, lambda { where('end_date >= ?', Time.zone.now)}
  scope :running_courses, started_courses & unended_courses

  # scope :current_course, lambda {
  #   { conditions:
  #    ['start_date < ?', Time.zone.now], 
  #    ['end_date > ?', Time.zone.now]
  #   }
  # }

end
