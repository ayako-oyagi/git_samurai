class CreateSamurais < ActiveRecord::Migration
  def change
    create_table :samurais do |t|
      t.string      :name
      t.integer     :year
      t.text        :text
      t.attachment :portrait
      t.timestamps null: false
    end
  end

  def self.down
    remove_attachment :samurais, :portrait
  end

end
