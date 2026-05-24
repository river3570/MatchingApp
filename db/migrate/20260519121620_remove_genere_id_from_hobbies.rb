class RemoveGenereIdFromHobbies < ActiveRecord::Migration[8.1]
  def change
    remove_column :hobbies, :genere_id, :integer
  end
end
