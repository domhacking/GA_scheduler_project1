class Course < ActiveRecord::Base
  attr_accessible :end_date, :end_time, :maxsize, :name, :start_date, :start_time, :classroom_id

belongs_to :classroom
has_and_belongs_to_many :users


end
