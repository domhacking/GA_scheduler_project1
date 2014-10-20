class Classroom < ActiveRecord::Base
  attr_accessible :maxpeople, :name, :campus_id

has_many :courses
has_many :users, through: :courses
belongs_to :campus

end
