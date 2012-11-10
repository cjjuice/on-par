class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :date
      t.boolean :accept
      t.boolean :sup_bro

      t.timestamps
    end
  end
end
