class Player < ActiveRecord::Base
  attr_accessible :dob, :email, :gender, :lat, :lng, :name, :radius
end
