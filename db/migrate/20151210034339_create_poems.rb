class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
    	t.string :title
    	t.integer :date 
    	t.string :description 
    	t.timestamps

    end
  end
end
