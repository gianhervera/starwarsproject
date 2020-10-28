class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :planet_name
      t.integer :rotation_period
      t.integer :orbital_period
      t.integer :diameter
      t.string :gravity
      t.integer :surface_water
      t.integer :population
      t.references :home_world, null: false, foreign_key: true

      t.timestamps
    end
  end
end
