class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :title 
    	t.string :description
    	t.attachment :avatar 
    	t.string :link_to_steam
    end
  end
end
