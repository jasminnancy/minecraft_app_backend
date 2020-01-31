class CreateBans < ActiveRecord::Migration[6.0]
  def change
    create_table :bans do |t|
      t.string :uuid
      t.string :username
      t.string :ip_address
      t.text :reason
      t.string :duration
      t.integer :flag_id

      t.timestamps
    end
  end
end
