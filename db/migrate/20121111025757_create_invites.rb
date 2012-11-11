class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.boolean :accept
      t.boolean :sup_bro
      t.references :player
      t.references :match

      t.timestamps
    end
    add_index :invites, :player_id
    add_index :invites, :match_id
  end
end
