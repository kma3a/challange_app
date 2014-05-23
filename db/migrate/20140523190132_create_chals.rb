class CreateChals < ActiveRecord::Migration
  def change
    create_table :chals do |t|
    	t.integer :creator_id
    	t.string :name
    	t.text :description

      t.timestamps
    end
  end
end
