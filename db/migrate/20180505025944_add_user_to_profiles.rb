class AddUserToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :user, foreign_key: true, unique: true
  end
end
