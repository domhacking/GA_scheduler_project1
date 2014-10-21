class Course < ActiveRecord::Base
  attr_accessible :end_date, :maxsize, :name, :start_date, :classroom_id, :student_ids, :instructor_ids, :teaching_assistants

  belongs_to :classroom
  has_and_belongs_to_many :students, class_name:"User"
  has_and_belongs_to_many :instructors, class_name:"User"
  has_and_belongs_to_many :teaching_assistants, class_name:"User"



end
