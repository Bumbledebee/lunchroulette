class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.string :picture
      t.references :place
      t.references :player

      t.timestamps
    end
   
  end
end
