class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.string :name
      t.date :timelimit
      t.text :description

      t.timestamps null: false
      
      t.integer :user_id
      t.index :name
      t.index :timelimit
      t.index :description
    end
  end
end
