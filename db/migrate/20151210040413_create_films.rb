class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
    	t.string :title
    	t.string :description
    	t.attachment :avatar 
    	t.string :video_link
    	t.timestamps
    end
  end
end
