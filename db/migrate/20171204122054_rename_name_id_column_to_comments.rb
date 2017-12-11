class RenameNameIdColumnToComments < ActiveRecord::Migration
  def change
    rename_column :comments, :name_id, :samurai_id
  end
end
