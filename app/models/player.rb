class Player < ActiveRecord::Base
  attr_accessible :address, :dob, :email, :facebook_id, :gender, :lat, :lng, :name, :radius
end
