class AddProfilepictureToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :profilepicture, :string
  end
end
