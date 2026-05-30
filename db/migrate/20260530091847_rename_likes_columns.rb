class RenameLikesColumns < ActiveRecord::Migration[8.1]
  def change
    rename_column :likes, :like_user_id_id,  :like_user_id
    rename_column :likes, :liked_user_id_id, :liked_user_id
  end
end
