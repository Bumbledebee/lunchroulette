class AddLeaderToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :leader, :string
  end
end
