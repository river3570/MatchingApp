class RenameMessagesToString < ActiveRecord::Migration[8.1]
  def change
    rename_column :messages, :string, :message
  end
end
