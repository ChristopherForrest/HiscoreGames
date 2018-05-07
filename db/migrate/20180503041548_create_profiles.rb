class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.integer :age
      t.text :bio
      t.text :favouritegames

      t.timestamps
    end
  end
end
