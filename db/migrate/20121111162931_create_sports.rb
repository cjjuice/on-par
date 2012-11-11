class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :num_of_players

      t.timestamps
    end
  end
end
