class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
    	t.integer :user_id
    	t.integer :chal_id

      t.timestamps
    end
  end
end
