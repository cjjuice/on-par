desc "Insert fake data into the database"
task :fake_data => :environment do
  puts "Fake Data!"

  # Remove all model instances.
  Palendar.destroy_all
  Valendar.destroy_all
  Match.destroy_all
  Venue.destroy_all
  Player.destroy_all

  # Create player objects.
  p1 = Player.create!(:name => 'John')
  p2 = Player.create!(:name => 'CJ')
  p3 = Player.create!(:name => 'Kermit')

  # Create player calendar objects.
  c1 = Palendar.create!(:day => 3, 
                        :start_time => 10, 
                        :end_time => 12)
  c1.player = p1
  c1.save

  c2 = Palendar.create!(:day => 6, 
                        :start_time => 8, 
                        :end_time => 17)
  c2.player = p1
  c2.save

  # Create venue objects.
  v1 = Venue.create!(:name => 'Microsoft NERD',
                     :lat => 42.362096,
                     :lng => -71.081041,
                     :price => 0)

  # Create match objects.
  m1 = Match.create!(:date => Date.today,
                     :accept => nil,
                     :sup_bro => nil)
  m1.player = p1
  m1.venue = v1
  m1.save

  players = Player.all

  # Iterate through each player object.
  players.each do |player|
    puts player.name
  end
end

desc "TBD"
task :update_matches => :environment do
  puts "Update Matches!"

end
