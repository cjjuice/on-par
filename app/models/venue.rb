class Venue < ActiveRecord::Base
  has_many :valendars
  has_many :matches
  attr_accessible :lat, :lng, :name, :pic_url, :price, :website
end
