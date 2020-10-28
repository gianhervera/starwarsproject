class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|
      t.string :name
      t.string :homeworld
      t.integer :height
      t.integer :mass
      t.string :hair_color
      t.string :skin_color
      t.string :eye_color
      t.string :birth_year
      t.string :gender
      t.string :species

      t.timestamps
    end
  end
end
