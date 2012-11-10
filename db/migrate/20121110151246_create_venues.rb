class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.float :price
      t.string :website
      t.string :pic_url

      t.timestamps
    end
  end
end
