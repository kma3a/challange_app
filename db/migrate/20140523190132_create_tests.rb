class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
    	t.integer :creator_id
    	t.string :name
    	t.text :description

      t.timestamps
    end
  end
end
