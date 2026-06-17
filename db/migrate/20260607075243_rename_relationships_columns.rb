class RenameRelationshipsColumns < ActiveRecord::Migration[8.1]
  def change
    rename_column :relationships, :like_user_id,  :liker_id
    rename_column :relationships, :liked_user_id, :liked_id
  end
end
