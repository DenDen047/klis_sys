class CreateBibliographies < ActiveRecord::Migration
  def change
    create_table :bibliographies do |t|
      t.string :name
      t.string :url
      t.integer :report_id

      t.timestamps null: false
      
      t.index :name
      t.index :url
      t.index :report_id
    end
  end
end
