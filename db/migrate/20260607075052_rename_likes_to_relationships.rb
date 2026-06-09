class RenameLikesToRelationships < ActiveRecord::Migration[8.1]
  def change
    rename_table :likes, :relationships
  end
end
