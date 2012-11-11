class Calendar < ActiveRecord::Base
  belongs_to :calendarable, :polymorphic => true
  attr_accessible :calendarable_id, :calendarable_type, :day, :end_time, :start_time
end
