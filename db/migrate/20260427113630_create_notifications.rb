class CreateNotifications < ActiveRecord::Migration[8.1]
  def change
    create_table :notifications do |t|
      t.string :context, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
