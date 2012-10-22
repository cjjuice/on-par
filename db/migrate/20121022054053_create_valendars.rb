class CreateValendars < ActiveRecord::Migration
  def change
    create_table :valendars do |t|
      t.integer :day
      t.integer :start_time
      t.integer :end_time
      t.references :venue

      t.timestamps
    end
    add_index :valendars, :venue_id
  end
end
