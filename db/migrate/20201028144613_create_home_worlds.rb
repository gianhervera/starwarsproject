class CreateHomeWorlds < ActiveRecord::Migration[6.0]
  def change
    create_table :home_worlds do |t|
      t.string :name

      t.timestamps
    end
  end
end
