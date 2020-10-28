class CreateWorlds < ActiveRecord::Migration[6.0]
  def change
    create_table :worlds do |t|
      t.string :name
      t.integer :rotation_period
      t.integer :orbital_period
      t.integer :diameter
      t.string :gravity
      t.string :eye_color
      t.integer :surface_water
      t.integer :population

      t.timestamps
    end
  end
end
