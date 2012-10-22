class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.datetime :date
      t.references :venue

      t.timestamps
    end
    add_index :matches, :venue_id
  end
end
