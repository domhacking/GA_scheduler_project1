class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :role

  has_and_belongs_to_many :courses
end
