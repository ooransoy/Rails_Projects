class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.datetime :date_and_time
      t.string :subject
      t.text :event
      t.integer :profile_id

      t.timestamps
    end
  end
end
