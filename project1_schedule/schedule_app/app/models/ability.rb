class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
        if user.role? :Admin
            can :manage, :all
        elsif user.role? :Instructor
            can :create, Course
        elsif user.role? :Teaching_assistant
            can :read, :all
        elsif user.role? :Student
            can :read, :all
        else
            can :create, User
       end
    end
end
