class Match < ActiveRecord::Base
  belongs_to :venue
  belongs_to :sport
  has_many :invites
  attr_accessible :date, :name
end
