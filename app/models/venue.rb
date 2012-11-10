class Venue < ActiveRecord::Base
  attr_accessible :lat, :lng, :name, :pic_url, :price, :website

  has_many :matches
  has_many :players, :through => :matches

  has_many :calendars
end
