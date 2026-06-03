class RemoveUserImageFromUsers < ActiveRecord::Migration[8.1]
  def change
    remove_column :users, :user_image, :string
  end
end
