class AddFlagToBansTable < ActiveRecord::Migration[6.0]
  def change
    add_column :bans, :flag, :boolean, default: false
  end
end
