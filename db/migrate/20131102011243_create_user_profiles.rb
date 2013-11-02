class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :profile_pic
      t.text :hobbies
      t.references :user, index: true

      t.timestamps
    end
  end
end
