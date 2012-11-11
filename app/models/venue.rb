class Venue < ActiveRecord::Base
  has_many :calendars, :as => :calendarable
  has_many :matches
  attr_accessible :address, :lat, :lng, :name, :pic_url, :price, :website

  geocoded_by :address, :latitude  => :lat, :longitude => :lng
  reverse_geocoded_by :lat, :lng
  after_validation :geocode, :reverse_geocode
end
