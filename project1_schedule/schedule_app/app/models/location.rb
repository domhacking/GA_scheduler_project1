class Location < ActiveRecord::Base
  attr_accessible :name

  has_many :courses through :classroom
  has_many :classroom
end
