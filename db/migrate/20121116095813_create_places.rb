class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :restaurant_name
      t.text :comment
      t.text :address
      t.string :picture

      t.timestamps
    end
  end
end
