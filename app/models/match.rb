class Match < ActiveRecord::Base
  attr_accessible :accept, :date, :sup_bro

  belongs_to :player
  belongs_to :venue
end
