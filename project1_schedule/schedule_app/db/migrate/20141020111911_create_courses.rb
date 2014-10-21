class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :maxsize
      t.datetime :start_date
      t.datetime :end_date
      t.integer :classroom_id
    

      t.timestamps
    end
  end
end
