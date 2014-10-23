class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :role, :course_id

  has_and_belongs_to_many :courses

 has_secure_password

  validates :password, presence: true, on: :createx
  validates :email, presence: true, uniqueness: {case_senesitve: false}

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  UNRANSACKABLE_ATTRIBUTES = ["id", "published", "created_at"]

  def self.ransackable_attributes auth_object = nil
    (column_names - UNRANSACKABLE_ATTRIBUTES) + _ransackers.keys
  end

end
