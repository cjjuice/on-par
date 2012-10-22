class Match < ActiveRecord::Base
  belongs_to :venue
  has_many :invites
  attr_accessible :date, :name
end
