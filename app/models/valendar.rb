class Valendar < ActiveRecord::Base
  belongs_to :venue
  attr_accessible :day, :end_time, :start_time
end
