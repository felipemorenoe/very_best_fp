class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :neighborhood_id
      t.string :address
      t.string :name

      t.timestamps

    end
  end
end
