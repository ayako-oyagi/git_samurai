class Deleteimagecolumn < ActiveRecord::Migration
  def change
    remove_column :samurais, :image, :text
    end
end
