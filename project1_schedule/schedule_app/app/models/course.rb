class Course < ActiveRecord::Base
  attr_accessible :end_date, :maxsize, :name, :start_date, :classroom_id, :user_id

  belongs_to :classroom
  has_and_belongs_to_many :users


end
