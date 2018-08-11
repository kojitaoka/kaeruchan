class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|

      t.timestamps
      t.integer :song_id
      t.integer :disc_id
      t.string :name
      t.integer :track_number
    end
  end
end