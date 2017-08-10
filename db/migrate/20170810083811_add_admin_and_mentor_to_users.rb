class AddAdminAndMentorToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :mentor, :boolean
  end
end
