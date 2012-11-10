class Player < ActiveRecord::Base
  attr_accessible :dob, :email, :gender, :lat, :lng, :name, :radius
  
  has_many :matches 
  has_many :venues, :through => :matches

  has_many :calendars
end
