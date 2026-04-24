class CreateHobbies < ActiveRecord::Migration[8.1]
  def change
    create_table :hobbies do |t|
      t.string :name, null: false
      t.references :genere, foreign_key: true

      t.timestamps
    end
  end
end
