class Player < ActiveRecord::Base
  has_many :calendars, :as => :calendarable
  has_many :invites
  attr_accessible :address, :dob, :email, :facebook_id, :gender, :lat, :lng, :name, :radius

  geocoded_by :address, :latitude  => :lat, :longitude => :lng
  reverse_geocoded_by :lat, :lng
  after_validation :geocode, :reverse_geocode
end
