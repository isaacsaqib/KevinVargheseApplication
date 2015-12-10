class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
    	t.string :title
    	t.string :download_link
    	t.string :synopsis 
    	t.attachment :avatar
    	t.timestamps
    end
  end
end
