class CreateLikes < ActiveRecord::Migration[8.1]
  def change
    create_table :likes do |t|
      t.references :like_user_id, foreign_key: { to_table: :users }
      t.references :liked_uesr_id, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
