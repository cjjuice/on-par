class Venue < ActiveRecord::Base
  attr_accessible :address, :lat, :lng, :name, :pic_url, :price, :website
end
