class CreateBan < ActiveRecord::Migration[6.0]
  def change
    create_table :bans do |t|
      t.string :UUID
      t.string :username
      t.string :ip
      t.text :reason
      t.string :duration

      t.timestamps
    end
  end
end
