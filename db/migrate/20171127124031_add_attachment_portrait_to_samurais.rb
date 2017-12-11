class AddAttachmentPortraitToSamurais < ActiveRecord::Migration
  def self.up
    change_table :samurais do |t|
      t.attachment :portrait
    end
  end

  def self.down
    remove_attachment :samurais, :portrait
  end
end
