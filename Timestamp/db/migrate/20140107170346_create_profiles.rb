class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
