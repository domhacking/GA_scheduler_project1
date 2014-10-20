class CoursesUsers < ActiveRecord::Migration
  def change 
  create_table :courses_users, id: false do |t|
    t.references :course
    t.integer :user_id
    t.integer :course_id

    t.timestamps
    end
  end
end
