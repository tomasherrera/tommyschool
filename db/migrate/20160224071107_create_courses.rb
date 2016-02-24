class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.integer :teacher_id, index: true, foreign_key: true
      t.datetime :starting_date
      t.datetime :ending_date
      t.integer :students_number
      t.string :level

      t.timestamps null: false
    end
  end
end
