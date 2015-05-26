class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :number_of_seats

      t.timestamps null: false
    end
  end
end
