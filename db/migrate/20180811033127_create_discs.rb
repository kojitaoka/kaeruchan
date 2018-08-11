class CreateDiscs < ActiveRecord::Migration[5.2]
  def change
    create_table :discs do |t|

      t.timestamps
      t.integer :disc_id
      t.integer :item_id
      t.string :disc_number
      t.datetime :create_at
      t.datetime :update_at
    end
  end
end
