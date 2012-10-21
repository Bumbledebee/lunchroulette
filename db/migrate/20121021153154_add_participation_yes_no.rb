class AddParticipationYesNo < ActiveRecord::Migration
 

def change
    add_column :players, :participating, :string
end
 
end
