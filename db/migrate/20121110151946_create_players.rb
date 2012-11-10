class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.datetime :dob
      t.string :gender
      t.float :lat
      t.float :lng
      t.integer :radius

      t.timestamps
    end
  end
end
