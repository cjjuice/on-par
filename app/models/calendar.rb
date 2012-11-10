class Calendar < ActiveRecord::Base
  attr_accessible :day, :end_time, :start_time

  belongs_to :player
  belongs_to :venue
end
