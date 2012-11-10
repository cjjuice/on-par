class Venue < ActiveRecord::Base
  attr_accessible :lat, :lng, :name, :pic_url, :price, :website
end
