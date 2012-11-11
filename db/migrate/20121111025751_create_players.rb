class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :address
      t.string :email
      t.datetime :dob
      t.string :gender
      t.string :facebook_id
      t.float :lat
      t.float :lng
      t.integer :radius

      t.timestamps
    end
  end
end
