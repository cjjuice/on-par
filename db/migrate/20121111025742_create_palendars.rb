class CreatePalendars < ActiveRecord::Migration
  def change
    create_table :palendars do |t|
      t.integer :day
      t.integer :start_time
      t.integer :end_time
      t.references :player

      t.timestamps
    end
    add_index :palendars, :player_id
  end
end
