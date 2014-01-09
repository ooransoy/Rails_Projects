class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :student_id
      t.string :lesson_name
      t.integer :exam_number
      t.integer :score

      t.timestamps
    end
  end
end
