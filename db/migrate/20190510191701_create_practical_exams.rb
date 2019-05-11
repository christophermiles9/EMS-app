class CreatePracticalExams < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_exams do |t|
      t.string :number
      t.string :name
      t.boolean :mandatory
      t.integer :time_limit
      t.date :date
      t.datetime :start_time
      t.datetime :stop_time
      t.integer :student_id
      t.integer :instructor_id

      t.timestamps
    end
    add_index :practical_exams, [:student_id, :instructor_id]
  end
end
