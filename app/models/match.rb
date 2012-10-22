class Match < ActiveRecord::Base
  belongs_to :player
  belongs_to :venue
  attr_accessible :accept, :date, :sup_bro
end
