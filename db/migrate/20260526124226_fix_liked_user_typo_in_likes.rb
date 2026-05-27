class FixLikedUserTypoInLikes < ActiveRecord::Migration[8.1]
  def change
    rename_column :likes, :liked_uesr_id_id, :liked_user_id_id
  end
end
