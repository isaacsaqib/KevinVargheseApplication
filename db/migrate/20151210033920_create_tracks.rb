class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.string :name
    	t.string :description
    	t.string :soundcloud_link
    end
  end
end
