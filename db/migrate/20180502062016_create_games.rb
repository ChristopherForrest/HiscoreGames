class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :genre
      t.string :category
      t.decimal :price
      t.boolean :sold
      t.timestamps
    end
  end
end
