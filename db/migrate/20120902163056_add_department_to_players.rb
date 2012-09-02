class AddDepartmentToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :department, :string
  end
end
