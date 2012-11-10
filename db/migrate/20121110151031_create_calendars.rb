class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :day
      t.integer :start_time
      t.integer :end_time

      t.timestamps
    end
  end
end
