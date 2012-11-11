class Venue < ActiveRecord::Base
  has_many :valendars
  has_many :matches
  attr_accessible :address, :lat, :lng, :name, :pic_url, :price, :website
end
