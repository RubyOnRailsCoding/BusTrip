class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :trip_id

      t.timestamps
    end
  add_index :tickets, :user_id
  add_index :tickets, :trip_id
  add_index :tickets, [:user_id, :trip_id]
  end
end
