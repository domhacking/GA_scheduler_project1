class Course < ActiveRecord::Base
  attr_accessible :end_date, :end_time, :maxsize, :name, :start_date, :start_time
end
