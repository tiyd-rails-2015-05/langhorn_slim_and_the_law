class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :venue_id
      t.datetime :played_at
      t.string :tour_name
      t.float :price

      t.timestamps null: false
    end
  end
end
