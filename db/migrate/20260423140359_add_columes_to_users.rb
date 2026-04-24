class AddColumesToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :user_image, :string
    add_column :users, :age, :int, null: false
  end
end
