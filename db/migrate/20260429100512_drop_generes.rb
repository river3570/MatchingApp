class DropGeneres < ActiveRecord::Migration[8.1]
  def change
    drop_table :generes
  end
end
