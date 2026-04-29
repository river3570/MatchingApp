class AddGenderToUsers < ActiveRecord::Migration[8.1]
  def change
    add_reference :users, :gender, null: false, foreign_key: true
  end
end
