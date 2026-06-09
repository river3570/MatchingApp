class ChangeConversationsUsers < ActiveRecord::Migration[8.1]
  def change
    remove_column :conversations, :name, :string
    add_reference :conversations, :user1, null: false, foreign_key: { to_table: :users }
    add_reference :conversations, :user2, null: false, foreign_key: { to_table: :users }
  end
end
