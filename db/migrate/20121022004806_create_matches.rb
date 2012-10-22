class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.boolean :accept
      t.boolean :sup_bro
      t.references :player
      t.references :venue

      t.timestamps
    end
    add_index :matches, :player_id
    add_index :matches, :venue_id
  end
end
