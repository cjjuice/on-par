class Invite < ActiveRecord::Base
  belongs_to :player
  belongs_to :match
  attr_accessible :accept, :sup_bro
end
