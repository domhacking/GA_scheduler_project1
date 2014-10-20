class Classroom < ActiveRecord::Base
  attr_accessible :maxpeople, :name

has_many :courses
has_many :users, through :courses
belongs_to :campus

end
