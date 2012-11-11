desc "Insert test data into the database"
task :test_data => :environment do
  puts "Test Data!"

  # Remove all model instances.
  Palendar.destroy_all
  Valendar.destroy_all
  Match.destroy_all
  Venue.destroy_all
  Player.destroy_all
  Sport.destroy_all
  Invite.destroy_all

  # Create player objects.
  p1 = Player.create!(:name => 'John',
                      :lat => 42.359178,
                      :lng => -71.092113,
                      :radius => 5)
  p2 = Player.create!(:name => 'CJ',
                      :lat => 42.358607,
                      :lng => -71.07014,
                      :radius => 3)
  p3 = Player.create!(:name => 'Kermit',
                      :lat => 42.320986,
                      :lng => -71.172107,
                      :radius => 2)

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

  # Create a sport.
  s = Sport.create!(:name => 'Golf',
                    :num_of_players => 4)

  # Create match objects.
  m1 = Match.create!(:date => Date.today,
                     :name => 'Battle Royale')
  m1.venue = v1
  m1.sport = s
  m1.save

  # Create invite objects.
  inv1 = Invite.create!()
  inv1.player = p1
  inv1.match = m1
  inv1.save

  inv2 = Invite.create!()
  inv2.player = p2
  inv2.match = m1
  inv2.save

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
