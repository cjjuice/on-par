class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.float :lat
      t.float :lng
      t.integer :price
      t.string :website
      t.string :pic_url

      t.timestamps
    end
  end
end
