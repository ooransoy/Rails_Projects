class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :class_name
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
