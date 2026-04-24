class CreateMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.references :conversation, foreign_key: true
      t.string :string, null: false

      t.timestamps
    end
  end
end
