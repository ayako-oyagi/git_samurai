class CreateSamurais < ActiveRecord::Migration
  def change
    create_table :samurais do |t|
      t.string      :name
      t.integer     :year
      t.text        :text
      t.text        :image
      t.timestamps
    end
  end
end
