class Player < ActiveRecord::Base
  has_many :palendars
  has_many :invites
  attr_accessible :address, :dob, :email, :facebook_id, :gender, :lat, :lng, :name, :radius
end
