class AddSportIndexToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :sport_id, :integer
    add_index :matches, :sport_id
  end
end
