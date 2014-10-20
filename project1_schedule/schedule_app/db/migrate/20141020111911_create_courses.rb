class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :maxsize
      t.string :start_time
      t.string :end_time
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
