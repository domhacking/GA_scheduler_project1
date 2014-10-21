class Classroom < ActiveRecord::Base
  attr_accessible :maxpeople, :name, :location_id

has_many :courses
has_many :users, through: :courses
belongs_to :location

end
