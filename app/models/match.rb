class Match < ActiveRecord::Base
  belongs_to :venue
  belongs_to :sport
  attr_accessible :date, :name
end
