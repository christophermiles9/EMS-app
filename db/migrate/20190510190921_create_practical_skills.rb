class CreatePracticalSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_skills do |t|
      t.string :text, null: false
      t.boolean :critical
      t.boolean :critical_passed
      t.integer :points_possible
      t.integer :points_earned
      t.integer :practical_exam_id

      t.timestamps
    end
    add_index :practical_skills, :practical_exam_id
  end
end
