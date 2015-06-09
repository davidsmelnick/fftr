class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :festival_id
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
