class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :nickname
      t.integer :rate
      t.text :review
      t.integer :name_id
      t.timestamps
    end
  end
end
