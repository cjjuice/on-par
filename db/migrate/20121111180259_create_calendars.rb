class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :day
      t.integer :start_time
      t.integer :end_time
      t.integer :calendarable_id
      t.string :calendarable_type

      t.timestamps
    end
  end
end
