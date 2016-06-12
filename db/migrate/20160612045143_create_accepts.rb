class CreateAccepts < ActiveRecord::Migration
  def change
    create_table :accepts do |t|
      t.integer :user_id
      t.integer :report_id

      t.timestamps null: false
      
      t.index :user_id
      t.index :report_id
      t.index :created_at
    end
  end
end
