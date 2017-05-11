class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :depart_city
      t.datetime :depart_time
      t.string :arrival_city
      t.datetime :arrival_time
      t.integer :free_seat

      t.timestamps
    end
  end
end
