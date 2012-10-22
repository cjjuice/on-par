class Palendar < ActiveRecord::Base
  belongs_to :player
  attr_accessible :day, :end_time, :start_time
end
